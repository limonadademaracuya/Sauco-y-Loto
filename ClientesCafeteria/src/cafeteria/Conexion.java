
package cafeteria;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    public Connection getConnection() {
        Connection cn = null;
        try {
            // Cambia "jdbc:mysql://localhost/cafeteria" a la URL correcta de tu base de datos
            cn = DriverManager.getConnection("jdbc:mysql://localhost/cafeteria", "root", "");
        } catch (SQLException e) {
            System.out.println("Error al conectar a la base de datos: " + e.getMessage());
        }
        return cn;
    }
}

