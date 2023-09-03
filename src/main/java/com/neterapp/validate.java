package com.neterapp;

import org.python.antlr.ast.Str;

import java.io.PrintWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.*;

import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.regex.Pattern;


@WebServlet("/val.ntr")
public class validate extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        try {
            String inputEmail = request.getParameter("email").toLowerCase();
            String[] emailParts = inputEmail.split("@");
            if (Pattern.matches("^[a-z0-9]+(?:\\.[a-z0-9]+)*@(?:[a-z0-9-]+\\.)+[a-z]{2,6}", inputEmail)
                    && emailParts[1].equals("scrypmail.ru") && emailParts[0].length() >= 5 && emailParts[0].length() <= 64) {

                Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
                try (Connection connection = DriverManager.getConnection("jdbc:mysql://scryp.ru/servermail?serverTimezone=UTC&useSSL=true", "root", "59R2d{YPVqb@QLrE")) {
                    Statement statement = connection.createStatement();
                    ResultSet resultSet = statement.executeQuery("SELECT * FROM `virtual_users`");
                    boolean findingEmailStatus = false;
                    while (resultSet.next()) {
                        String email = resultSet.getString(4);
                        if (inputEmail.equals(email)) {
                            writer.print("yes");
                            findingEmailStatus = true;
                            break;
                        }
                    }
                    if (!findingEmailStatus) {
                        Statement statement2 = connection.createStatement();
                        ResultSet resultSet2 = statement2.executeQuery("SELECT * FROM `virtual_aliases`");
                        while (resultSet2.next()) {
                            String email = resultSet2.getString(3);
                            if (inputEmail.equals(email)) {
                                writer.print("yes");
                                findingEmailStatus = true;
                                break;
                            }
                        }
                        if (!findingEmailStatus) {
                            connection.close();
                            try (Connection connectionForbidden = DriverManager.getConnection("jdbc:mysql://scryp.ru/scryp?serverTimezone=UTC&useSSL=true", "root", "59R2d{YPVqb@QLrE")) {
                                Statement statementForbiddenPrefix = connectionForbidden.createStatement();
                                ResultSet resultSetForbiddenPrefix = statementForbiddenPrefix.executeQuery("SELECT * FROM `mail-forbidden-prefix`");
                                while (resultSetForbiddenPrefix.next()) {
                                    String prefix = resultSetForbiddenPrefix.getString(1);
                                    if (inputEmail.split("@")[0].contains(prefix)) {
                                        writer.print("forbidden");
                                        findingEmailStatus = true;
                                        break;
                                    }
                                }
                                if (!findingEmailStatus) {
                                    Statement statementForbiddenAddress = connectionForbidden.createStatement();
                                    ResultSet resultSetForbiddenAddress = statementForbiddenAddress.executeQuery("SELECT * FROM `mail-forbidden-address`");
                                    while (resultSetForbiddenAddress.next()) {
                                        String address = resultSetForbiddenAddress.getString(1);
                                        if (inputEmail.equals(address)){
                                            writer.print("forbidden");
                                            findingEmailStatus = true;
                                            break;
                                        }
                                    }
                                }
                            } catch (Exception exp) {
                                exp.printStackTrace();
                            }
                        }
                    }
                    if (!findingEmailStatus) writer.print("no");


                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    writer.close();
                }
            }else {
                writer.print("incorrect");
                writer.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}