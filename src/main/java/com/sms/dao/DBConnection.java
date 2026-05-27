package com.sms.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    // Database Path
    private static final String URL =
    "jdbc:sqlite:C:/Users/Nagaraj/Downloads/StudentManagementSystem/StudentManagementSystem/database/student1.db";

    // Connection Method
    public static Connection getConnection() {

        Connection con = null;

        try {

            // Load SQLite JDBC Driver
            Class.forName("org.sqlite.JDBC");

            // Create Connection
            con = DriverManager.getConnection(URL);

            System.out.println("Database Connected Successfully");

        } catch (Exception e) {

            e.printStackTrace();
        }

        return con;
    }
}