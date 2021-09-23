package ru.nikolaev.javaEE;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "LibraryServlet", value = "/LibraryServlet")
public class LibraryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getWriter();

        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            Connection connect = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/java_ee_db", "postgres", "");
            Statement stmt = connect.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT title from books");

            while (rs.next()) {
                pw.println(rs.getString("title"));

                stmt.close();
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
