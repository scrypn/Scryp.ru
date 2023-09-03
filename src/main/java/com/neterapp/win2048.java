package com.neterapp;

import com.neterlibs.ai2048;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;


@WebServlet("/win2048.ntr")
public class win2048 extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();

        try {
            request.setCharacterEncoding("UTF-8");
            String input = new String((request.getParameter("input").trim()).getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
            writer.print(new ai2048().getWinChance(input));
        } catch (Exception e) {
            writer.print(e);
        } finally {
            writer.close();
        }
    }
}

