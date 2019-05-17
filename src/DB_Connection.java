//import sql library 
import java.sql.*;
import javax.swing.JOptionPane;
import java.sql.DriverManager;
//new class declaration
public class DB_Connection {
    //new global variable of type connection 
Connection connection = null;

 public static Connection get_connection(){
        //initiate the connection as null
        Connection connection = null;
        //trys to establish the connection to using the driver and the link database 
        try{
                    //mysql driver 
                    Class.forName("com.mysql.jdbc.Driver");
                    //connection link to db
                    connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/globalmusicagency", "root", "");
                    
                    //catches errors and displays them 
        }catch(Exception e){
            System.out.println(e);
        }
        //returns the connection if the connection was established successfully
        return connection;
    }
}
