import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
public class Conectar {
Connection con = null;
public Connection conexion(){
try { //cargar driver
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost/minisuper","root","");

//JOptionPane.showMessageDialog(null, "Lograste conectarte a la base de datos ");
/* Solicita una conexión y debe enviar un mensaje getConnection y sus parámetros son URL, usuario, contraseña */
} catch (ClassNotFoundException | SQLException e) {

JOptionPane.showMessageDialog(null, "No se estableció la Conexion a la Base de Datos "+e);
} return con;
}
public ResultSet Consultar(String sql){
ResultSet resultado;
try {
Statement sentencia = conexion().createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY );
resultado = sentencia.executeQuery(sql);
}catch(SQLException e){
JOptionPane.showMessageDialog(null,"Error sql consultar" +e);
return null;}
return resultado;



}
}