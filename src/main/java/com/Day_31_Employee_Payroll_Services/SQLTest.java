package com.Day_31_Employee_Payroll_Services;

import java.sql.*;

public class SQLTest 
{
    public static void main(String[] args)
    {
        String jdbcurl="jdbc:mysql://localhost:3306/payroll_service?useSSL=false";
        String userName="root";
        String password="Rehana@786";
        Connection connection;        
        try{
            //Class.forName("com.mysql.jdbc.Driver");
        	Class.forName("com.mysql.cj.jdbc.Driver");
        	System.out.println("Driver Loaded!");            
        }
        catch (Exception e)
        {
           e.printStackTrace();
        }
    }
}

