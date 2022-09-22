package projectpos;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Config {
        private static Connection mysqlconfig;
        public static Connection configDB()throws SQLException{
            try {
                String url="jdbc:mysql://217.21.72.102:3306/u1694897_kel34";          //Url Database
                String user="u1694897_smt1";                                 //User Database
                String pass="@polije.ac.id";                                     //Password Database
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                mysqlconfig=DriverManager.getConnection(url, user, pass);
            } catch (SQLException e) {
                System.err.println("Koneksi Gagal "+e.getMessage()); //Perintah Menampilkan error Pada Koneksi
            }
            return mysqlconfig;
        }
}
