package com.sms.controller;

import java.io.IOException;

import com.sms.dao.StudentDAO;
import com.sms.model.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateStudent")
public class UpdateStudentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        Student s = new Student();

        s.setId(id);
        s.setName(name);
        s.setEmail(email);
        s.setCourse(course);
        s.setPhone(phone);
        s.setAddress(address);

        StudentDAO dao = new StudentDAO();

        dao.updateStudent(s);

        response.sendRedirect("students.jsp");
    }
}