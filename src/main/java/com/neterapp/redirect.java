package com.neterapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@WebServlet("/redirect")
public class redirect extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = request.getParameter("url");
        if (url != null && !url.equals("") && url.length() < 256) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
            } catch (Exception e) {
                e.printStackTrace();
            }
            try (Connection connection = DriverManager.getConnection("jdbc:mysql://www.scryp.ru/scryp?serverTimezone=UTC&useSSL=true", "root", "59R2d{YPVqb@QLrE")) {
                /*Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery("SELECT * FROM `redirectAllowed`");
                boolean isUrlAllowed = false;
                while (resultSet.next()) {
                    String urlAllowed = resultSet.getString(1);
                    if (url.equals(urlAllowed)){
                        isUrlAllowed = true;
                        break;
                    }
                }*/
//                if (isUrlAllowed) {
                    PreparedStatement preparedStatement = connection.prepareStatement("INSERT redirect(redir_time, redir_url) VALUES (?, ?)");
                    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss z");
                    Date date = new Date(System.currentTimeMillis());
                    preparedStatement.setString(1, formatter.format(date));
                    preparedStatement.setString(2, url);
                    preparedStatement.executeUpdate();
                    response.sendRedirect(url);
//                }else response.sendRedirect("https://www.scryp.ru/url-not-allowed");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }else response.sendRedirect("https://www.scryp.ru");
    }
}

