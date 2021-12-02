package CRUD;

import common.DB_Connection;
import common.user_tf;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class edit_value {
    public user_tf get_value_of_data(String id_kas){
        DB_Connection conn = new DB_Connection();
        Connection connection = conn.get_connection();
        
        PreparedStatement ps = null;
        ResultSet rs = null;
        
                user_tf ut = new user_tf();
        try{
            String querry = "select * from tb_data where id_kas=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, id_kas);;
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                ut.setId_kas(rs.getString("id_kas"));
                ut.setNama_anggota(rs.getString("nama_anggota"));
                ut.setSumbangan_kas(rs.getString("sumbangan_kas"));
                
            }
            
        }catch(Exception e){
            System.out.println(e);
        } return ut;
    }
    
    
    public void edit_data(user_tf ut_obj){
        DB_Connection conn = new DB_Connection();
        Connection connection = conn.get_connection();
        
        PreparedStatement ps = null;
        
        try{
            String querry = "update tb_data set nama_anggota=?,sumbangan_kas=? where id_kas=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, ut_obj.getNama_anggota());;
            ps.setString(2, ut_obj.getSumbangan_kas());;
            ps.setString(3, ut_obj.getId_kas());;
            ps.executeUpdate();
            
        }catch(Exception e){
            System.out.println(e);
        } 
    }
    
}
