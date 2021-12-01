package com.Day_31_Employee_Payroll_Services;

import java.sql.*;

public class SQLTest 
{
    public static void main(String[] args)
    {
        String jdbcurl="jdbc:mysql://localhost:3306/payroll_service?useSSL=false";
        String userName="root";
        String password="Rehana@786";
        Connection con;
        Statement statement ;
        try{
            //Class.forName("com.mysql.jdbc.Driver");
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	System.out.println("Driver Loaded");
            con= DriverManager.getConnection(jdbcurl, userName, password);
            statement= con.createStatement();
            ResultSet resultSet = statement.executeQuery("select * from employee_payroll");
            while(resultSet.next())
            {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String basic_pay = resultSet.getString("basic_pay");
				System.out.print(id + " ");
				System.out.print(name + " ");
				System.out.print(basic_pay + " ");
				System.out.println(" ");
            }
        }
        catch (Exception e)
        {
           e.printStackTrace();
        }
    }
}

