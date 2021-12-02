package CRUD;
import common.DB_Connection;
import java.sql.*;
public class insert_value {
    public void insert_val(String id,String na,String sk){
        DB_Connection conn = new DB_Connection();
        Connection connection = conn.get_connection();
        
        PreparedStatement ps=null;
        try{
            String query = "INSERT INTO `tb_data` (`id_kas`, `nama_anggota`, `sumbangan_kas`) VALUES (?, ?, ?);";
            ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, na);
            ps.setString(3, sk);
            ps.executeUpdate();
        }catch(Exception e){
            System.err.println(e);
        }
    }
}
