package CRUD;

import common.DB_Connection;
import common.user_tf;
import java.sql.Connection;
import java.sql.*;
import java.util.*;

public class read_value {
    
    public static void main(String[] args){
        read_value rv = new read_value();
        rv.get_values();
    }
    
    public List<user_tf> get_values(){
        DB_Connection conn = new DB_Connection();
        Connection connection = conn.get_connection();
        
        PreparedStatement ps = null;
        ResultSet rs = null;
        
         List<user_tf> list=new ArrayList<user_tf>();
        
        try{
            String querry = "select * from tb_data";
            ps = connection.prepareStatement(querry);
            rs=ps.executeQuery();
            
            while(rs.next()){
                user_tf ut = new user_tf();
                System.out.println(rs.getString("id_kas"));
                System.out.println(rs.getString("nama_anggota"));
                System.out.println(rs.getString("sumbangan_kas"));
                
                ut.setId_kas(rs.getString("id_kas"));
                ut.setNama_anggota(rs.getString("nama_anggota"));
                ut.setSumbangan_kas(rs.getString("sumbangan_kas"));
                
                list.add(ut);
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
        return list;
    }


    
}
