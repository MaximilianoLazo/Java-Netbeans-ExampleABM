
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class ComboBoxx {
    Conectar con = new Conectar();
   Connection cn= (Connection) con.conexion();
    
    
    public void mostrar_combo(JComboBox caja){ //Metodo que no devuelve nada
        //Creamos la consulta
        String SSQL = "SELECT categoria from categoria ORDER BY categoria ASC";
        
        try {
            
            PreparedStatement pst = (PreparedStatement) cn.prepareStatement(SSQL);
            ResultSet rs = pst.executeQuery();
            
            caja.addItem("Seleccione una categoria");
            
            while(rs.next()){
            caja.addItem(rs.getString("categoria")); //Llenando el combobox con el nombre que quiero traer
            
            
            }
            
            
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e);
        }
    
    }
}
