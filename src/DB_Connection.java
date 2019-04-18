//import sql library 
import java.sql.*;
import javax.swing.JOptionPane;
import java.sql.DriverManager;

public class DB_Connection {
Connection connection = null;

 public static Connection get_connection(){
        Connection connection = null;
        
        try{
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/globalmusicagency", "root", "");
                    

        }catch(Exception e){
            System.out.println(e);
        }
        
        return connection;
    }
}
