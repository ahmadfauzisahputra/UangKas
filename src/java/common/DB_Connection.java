package common;

import java.sql.*;

public class DB_Connection {
    public static void main(String[] args){
        DB_Connection obj_DB_Connection = new DB_Connection();
        System.out.println(obj_DB_Connection.get_connection());
    }
    public Connection get_connection(){
        Connection connection =null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/uangkas","root","");
        }catch(Exception e){
            System.out.print("Error" + e);
        }
        return connection;
    }
}

