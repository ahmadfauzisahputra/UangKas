package CRUD;

import common.DB_Connection;
import common.user_tf;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class delete_value {
    
    public void delete(String id_kas){
        DB_Connection conn = new DB_Connection();
        Connection connection = conn.get_connection();
        
        PreparedStatement ps = null;
       
        try{
            String querry = "delete from tb_data where id_kas=?";
            ps = connection.prepareStatement(querry);
            ps.setString(1, id_kas);;
            ps.executeUpdate();
       
            
        }catch(Exception e){
            System.out.println(e);
        } 
    }
    
}
