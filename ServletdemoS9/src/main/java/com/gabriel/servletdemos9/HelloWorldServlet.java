package com.gabriel.servletdemos9;

import java.io.*;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/HelloWorldServlet")
public class HelloWorldServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Step 1: set the content type
        response.setContentType("text/html");

        // Step 2: get the printwriter
        PrintWriter out = response.getWriter();

        // Step 3: generate HTML content
        out.println("<html><body>");
        out.println("<h1>" + "Hola mundo" + "</h1>");
        out.println("<hr>");
        out.println("Time on the server is: "+new java.util.Date());
        out.println("</body></html>");
    }

}