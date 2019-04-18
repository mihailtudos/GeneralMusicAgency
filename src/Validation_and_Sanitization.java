
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mihai
 */
public class Validation_and_Sanitization {
    public static String checkTextFormat(String text){
        if(text.isEmpty()){
            return "-1";
        }
        boolean allLetters = text.chars().allMatch(Character::isLetter);
        if(allLetters){
            String formatedText = text.substring(0, 1).toUpperCase() + text.substring(1);
            return formatedText;
        }else{
            JOptionPane.showMessageDialog(null, "Incorrect format");
            return "-1";
        }
    }
    public static String checkPassword(String password, String conf_password){
        if(password.isEmpty() || conf_password.isEmpty() || !password.equals(conf_password)){
            JOptionPane.showMessageDialog(null, "Incorrect password entered");
            return "-1";
        }else{
               try {
                    String input = password;
                    // Static getInstance method is called with hashing SHA
                    MessageDigest md = MessageDigest.getInstance("SHA-256");
                    // digest() method called to calculate message digest of an input and return array of byte
                    byte[] messageDigest = md.digest(input.getBytes());
                    // Convert byte array into signum representation
                    BigInteger no = new BigInteger(1, messageDigest);
                    // Convert message digest into hex value
                    String hashtext = no.toString(16);
                    while (hashtext.length() < 32) {
                        hashtext = "0" + hashtext;
                    }
                    return hashtext;
                }

                // For specifying wrong message digest algorithms
                catch (NoSuchAlgorithmException e) {
                    System.out.println("Exception thrown"
                            + " for incorrect algorithm: " + e);
                    return "-1";
                }
        }
    }
    
    
}


