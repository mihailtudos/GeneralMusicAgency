//import sql library 
import java.sql.*;
import javax.swing.JOptionPane;

public class DB_Connection {
Connection connectionDB;

public static Connection ConnectDB(){
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection connectionDB = DriverManager.getConnection("jdbc:mysql://localhost:3306/globalmusicagency", "root","");
        return connectionDB;
    }catch(Exception e){
        JOptionPane.showMessageDialog(null, e); 
        return null;
    }
    
}
}
