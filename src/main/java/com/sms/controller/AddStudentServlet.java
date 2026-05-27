package com.sms.controller;

import java.io.IOException;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/addStudent")
public class AddStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        Student s = new Student();

        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);
        s.setPhone(phone);
        s.setAddress(address);

        StudentDAO dao = new StudentDAO();

        dao.addStudent(s);

        response.sendRedirect("students.jsp");
    }
}