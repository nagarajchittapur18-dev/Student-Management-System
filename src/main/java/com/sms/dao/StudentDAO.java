package com.sms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sms.model.Student;

public class StudentDAO {

    // Add Student
    public boolean addStudent(Student s) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "INSERT INTO students(name,email,course,phone,address) VALUES(?,?,?,?,?)";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());
            ps.setString(4, s.getPhone());
            ps.setString(5, s.getAddress());

            status = ps.executeUpdate() > 0;

            System.out.println("Student Added Successfully");

        } catch(Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    // View All Students
    public List<Student> getAllStudents() {

        List<Student> list = new ArrayList<>();

        try {

            Connection con = DBConnection.getConnection();

            String sql = "SELECT * FROM students";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while(rs.next()) {

                Student s = new Student();

                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setCourse(rs.getString("course"));
                s.setPhone(rs.getString("phone"));
                s.setAddress(rs.getString("address"));

                list.add(s);
            }

        } catch(Exception e) {

            e.printStackTrace();
        }

        return list;
    }

    // Delete Student
    public boolean deleteStudent(int id) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "DELETE FROM students WHERE id=?";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setInt(1, id);

            status = ps.executeUpdate() > 0;

            System.out.println("Student Deleted");

        } catch(Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    // Update Student
    public boolean updateStudent(Student s) {

        boolean status = false;

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "UPDATE students SET name=?, email=?, course=?, phone=?, address=? WHERE id=?";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getCourse());
            ps.setString(4, s.getPhone());
            ps.setString(5, s.getAddress());

            ps.setInt(6, s.getId());

            status = ps.executeUpdate() > 0;

            System.out.println("Student Updated");

        } catch(Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    // Get Student By ID
    public Student getStudentById(int id) {

        Student s = new Student();

        try {

            Connection con = DBConnection.getConnection();

            String sql =
            "SELECT * FROM students WHERE id=?";

            PreparedStatement ps =
            con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if(rs.next()) {

                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setEmail(rs.getString("email"));
                s.setCourse(rs.getString("course"));
                s.setPhone(rs.getString("phone"));
                s.setAddress(rs.getString("address"));
            }

        } catch(Exception e) {

            e.printStackTrace();
        }

        return s;
    }
}