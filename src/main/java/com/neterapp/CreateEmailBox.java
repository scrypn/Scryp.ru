package com.neterapp;

import com.neterlibs.MailHasherSha512;
import com.neterlibs.RSAUtil;
import org.python.antlr.ast.Str;
import ru.scryp.Mailer;

import java.io.File;
import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.*;

import java.net.URL;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
import java.util.regex.Pattern;


@WebServlet("/create-email.ntr")
public class CreateEmailBox extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://scryp.ru/scryp?serverTimezone=UTC&useSSL=true", "root", "59R2d{YPVqb@QLrE");
                 Connection connectionMail = DriverManager.getConnection("jdbc:mysql://scryp.ru/servermail?serverTimezone=UTC&useSSL=true", "root", "59R2d{YPVqb@QLrE")) {
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM `mail-keys`");
                boolean findingKeyStatus = false;
                String privateKey = new Scanner(new File("/home/ubuntu/jars/scrypt/privkey.pem")).nextLine();
                String inputKey = request.getParameter("key");
                String inputName = request.getParameter("name");
                String inputEmail = request.getParameter("email").toLowerCase();
                String[] emailParts = inputEmail.split("@");
                String inputPassword = RSAUtil.decrypt(request.getParameter("password").replaceAll("\\s","+"),
                        privateKey);
                while (resultSet.next()) {
                    String key = resultSet.getString(1);
                    if (inputKey.equals(key)) {
                        findingKeyStatus = true;
                        break;
                    }
                }
                if (findingKeyStatus) {
                    boolean findingEmailStatus = false;
                    String emailFoundStatus = "email-incorrect";
                    if (Pattern.matches("^[a-z0-9]+(?:\\.[a-z0-9]+)*@(?:[a-z0-9-]+\\.)+[a-z]{2,6}", inputEmail)
                            && emailParts[1].equals("scrypmail.ru") && emailParts[0].length() >= 5 && emailParts[0].length() <= 64) {

                        try {
                            Statement statementServerMail = connectionMail.createStatement();
                            ResultSet resultSetServerMail = statementServerMail.executeQuery("SELECT * FROM `virtual_users`");
                            while (resultSetServerMail.next()) {
                                String email = resultSetServerMail.getString(4);
                                if (inputEmail.equals(email)) {
                                    findingEmailStatus = true;
                                    emailFoundStatus = "email-exists";
                                    break;
                                }
                            }
                            if (!findingEmailStatus) {
                                Statement statementServerMail2 = connectionMail.createStatement();
                                ResultSet resultSetServerMail2 = statementServerMail2.executeQuery("SELECT * FROM `virtual_aliases`");
                                while (resultSetServerMail2.next()) {
                                    String email = resultSetServerMail2.getString(3);
                                    if (inputEmail.equals(email)) {
                                        findingEmailStatus = true;
                                        emailFoundStatus = "email-exists";
                                        break;
                                    }
                                }
                                if (!findingEmailStatus) {
                                    Statement statementForbiddenPrefix = connection.createStatement();
                                    ResultSet resultSetForbiddenPrefix = statementForbiddenPrefix.executeQuery("SELECT * FROM `mail-forbidden-prefix`");
                                    while (resultSetForbiddenPrefix.next()) {
                                        String prefix = resultSetForbiddenPrefix.getString(1);
                                        if (inputEmail.split("@")[0].contains(prefix)) {
                                            findingEmailStatus = true;
                                            emailFoundStatus = "email-forbidden";
                                            break;
                                        }
                                    }
                                    if (!findingEmailStatus) {
                                        Statement statementForbiddenAddress = connection.createStatement();
                                        ResultSet resultSetForbiddenAddress = statementForbiddenAddress.executeQuery("SELECT * FROM `mail-forbidden-address`");
                                        while (resultSetForbiddenAddress.next()) {
                                            String address = resultSetForbiddenAddress.getString(1);
                                            if (inputEmail.equals(address)){
                                                findingEmailStatus = true;
                                                emailFoundStatus = "email-forbidden";
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }else findingEmailStatus = true;

                    if (!findingEmailStatus) {
                        try (PreparedStatement preparedStatementKey = connection.prepareStatement("DELETE FROM `mail-keys` WHERE `keys`=?")) {
                            preparedStatementKey.setString(1, inputKey);
                            preparedStatementKey.executeUpdate();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        try (PreparedStatement preparedStatementName = connection.prepareStatement(
                                "INSERT `email-name`(`email`, `name`, `registrated`) VALUES (?, ?, ?)")) {
                            preparedStatementName.setString(1, inputEmail);
                            preparedStatementName.setString(2, inputName);
                            SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd 'at' HH:mm:ss z");
                            java.util.Date date = new Date(System.currentTimeMillis());
                            preparedStatementName.setString(3, formatter.format(date));
                            preparedStatementName.executeUpdate();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        try {
                            Statement statementMail = connectionMail.createStatement();
                            ResultSet resultSetMail = statementMail.executeQuery("SELECT * FROM `virtual_users`");
                            int mailboxesCount = 0;
                            while (resultSetMail.next()) { mailboxesCount++; }
                            try (PreparedStatement preparedStatementMail = connectionMail.prepareStatement(
                                    "INSERT `virtual_users`(`id`, `domain_id`, `password`, `email`) VALUES (?, ?, ?, ?)")) {
                                preparedStatementMail.setInt(1, mailboxesCount + 1);
                                preparedStatementMail.setInt(2, 9);
                                preparedStatementMail.setString(3, MailHasherSha512.Sha512_crypt(inputPassword,
                                        null, (int) ((Math.random() * 8999) + 1000)));
                                preparedStatementMail.setString(4, inputEmail);
                                int status = preparedStatementMail.executeUpdate();
                                if (status == 1){
                                    String text = "Добро пожаловать в бесплатный почтовый сервис ScrypMail от Николая Скрипниченко!<br>С помощью данного почтового адреса вы можете получить доступ к нашему " +
                                            "<a href=\"https://cloud.scryp.ru/\" target=\"_blank\">облаку</a> и <a href=\"https://chat.scryp.ru/\" target=\"_blank\">онлайн-мессенджеру</a>. Войти в " +
                                            "свой почтовый ящик вы можете используя наш <a href=\"https://mail.scryp.ru/\" target=\"_blank\">почтовый веб-клиент</a>, либо через любой другой сторонний сервис (необходимые для этого " +
                                            "параметры сервера ScrypMail вы можете найти <a href=\"https://www.scryp.ru/mail-server/\" target=\"_blank\">здесь</a>).<br>Надеемся, вы останетесь довольны сервисами " +
                                            "<a href=\"https://www.scryp.ru/\" target=\"_blank\">Scryp.ru</a>.";
                                    new Mailer("admin@scrypmail.ru", "kS24NaUqKrcW9SyL").send("Добро пожаловать", text, "scryp.html", "ScrypMail",
                                            inputEmail);
                                    String secondText = "Здравстуйте, Николай Сергеевич. К сервису ScrypMail присоединился новый пользователь " + inputName +
                                            ", почтовый ящик: " + inputEmail;
                                    new Mailer("admin@scrypmail.ru", "kS24NaUqKrcW9SyL").send("Новый пользователь", secondText, "scryp.html", "ScrypMail",
                                            "nick@scryp.ru");

                                }
                                writer.print(status);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } catch (Exception exp) {
                            exp.printStackTrace();
                        }
                    }else writer.print(emailFoundStatus);
                } else writer.print("incorrect-key");


            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                writer.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}