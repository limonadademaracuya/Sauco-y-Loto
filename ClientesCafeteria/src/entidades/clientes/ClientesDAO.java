/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package entidades.clientes;

/**
 *
 * @author Alumno 4
 */
import java.util.List;

public interface ClientesDAO {
   public List<Clientes> getAllCientes();
   public Clientes getCliente(int rollNo);
   public void updateCliente(Clientes cliente);
   public void deleteCliente(Clientes cliente);
   public void addCliente(Clientes cliente);
   
   
   
   
}

