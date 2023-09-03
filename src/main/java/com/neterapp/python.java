/*
package com.neterapp;

import com.neterlibs.TemplateEmail;
import com.neterlibs.TemplateEmailScryp;
import com.neterlibs.emailServiceSender;
import org.python.util.PythonInterpreter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.charset.StandardCharsets;
import java.util.Scanner;


@WebServlet("/python.ntr")
public class python extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();

        try {
            request.setCharacterEncoding("UTF-8");
            String code = new String((request.getParameter("code").trim()).getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
            String input = new String((request.getParameter("input").trim()).getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
            String pwd = new String((request.getParameter("pid").trim()).getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
            if (pwd.equals("nickscryp2021")) {
                StringBuilder sb = new StringBuilder();
                Scanner sc = new Scanner(input);
                while (sc.hasNext()) {
                    sb.append("\"").append(sc.nextLine()).append("\"").append("\n");
                }
                //Class.forName("org.python.util.PythonInterpreter").getDeclaredConstructor().newInstance();
                try {
                    PythonInterpreter pi = new PythonInterpreter();
                    StringWriter sw = new StringWriter();
                    StringReader sr = new StringReader(sb.toString().trim());
                    pi.setOut(sw);
                    pi.setErr(sw);
                    pi.setIn(sr);
                    pi.exec(code);
                    writer.print(sw.toString());
                } catch (Exception e) {
                    writer.print(e);
                }
            }else writer.print("Access denied. Authentication error");
        } catch (Exception e) {
            writer.print(e);
        } finally {
            writer.close();
        }
    }
}

*/
