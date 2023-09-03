package com.neterapp;

import com.neterlibs.RSAUtil;
import ru.scryp.Mailer;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Scanner;


@WebServlet("/feed.ntr")
public class feedback extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();

        try {
            request.setCharacterEncoding("UTF-8");
            String[] parts = request.getParameter("text").replaceAll("\\s","+").split("_");
            String privateKey = new Scanner(new File("/home/ubuntu/jars/scrypt/privkey.pem")).nextLine();
            StringBuilder body = new StringBuilder();
            for (String s:parts) { body.append(RSAUtil.decrypt(s, privateKey)); }
            if (body.toString().length() <= 10000) {
                new Mailer("user@scryp.ru", "RAY48MuX2ha6EUXL").send("Сообщение от пользователя", body.toString(), "scryp.html", "ScrypUser",
                        "support@scryp.ru");

                writer.print("success");
            }else writer.print("error");
        } catch (Exception e) {
            writer.print(e);
        } finally {
            writer.close();
        }
    }
}



