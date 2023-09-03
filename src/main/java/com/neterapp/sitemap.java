package com.neterapp;

import com.neterlibs.TemplateEmail;
import com.neterlibs.TemplateEmailScryp;
import com.neterlibs.emailServiceSender;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import com.neterlibs.createXMLFile;


@WebServlet("/sitemap.ntr")
public class sitemap extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();

        try {

            request.setCharacterEncoding("UTF-8");
            String url = new String((request.getParameter("url").trim()).getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
            String home_path = "/opt/tomcat/webapps/scryp/sitemaps/files/";
            writer.print(createXMLFile.generateSiteMap(url, home_path));
        } catch (Exception e) {
            writer.print("error");
        } finally {
            writer.close();
        }
    }
}

