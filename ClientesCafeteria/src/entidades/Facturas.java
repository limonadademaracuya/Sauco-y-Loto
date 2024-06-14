
package entidades;

import java.util.ArrayList;
import java.util.List;

public class Facturas {
    private char letra;
    private int nroPedido;
    private String fecha;
    private double monto;
    private int idCliente;
    private int idAdministrador;
    private int idProducto;
    private List <Articulos> articulos;
    private String formaDePago;
    
   
    public Facturas(){}

    public Facturas(char letra, int nroPedido, String fecha, double monto, int idCliente, int idAdministrador, int idProducto, List<Articulos> articulos, String formaDePago) {
        this.letra = letra;
        this.nroPedido = nroPedido;
        this.fecha = fecha;
        this.monto = monto;
        this.idCliente = idCliente;
        this.idAdministrador = idAdministrador;
        this.idProducto = idProducto;
        this.articulos = articulos;
        this.formaDePago = formaDePago;
    }

    public boolean add(Articulos e) {
        return articulos.add(e);
    }

    public boolean remove(Object o) {
        return articulos.remove(o);
    }

    public char getLetra() {
        return letra;
    }

    public void setLetra(char letra) {
        this.letra = letra;
    }

    public int getIdAdministrador() {
        return idAdministrador;
    }

    public void setIdAdministrador(int idAdministrador) {
        this.idAdministrador = idAdministrador;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }
    
    public int getNroPedido() {
        return nroPedido;
    }

    public void setNroPedido(int nroPedido) {
        this.nroPedido = nroPedido;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public List<Articulos> getArticulos() {
        return articulos;
    }

    public void setArticulos(List<Articulos> articulos) {
        this.articulos = articulos;
    }

    public String getFormaDePago() {
        return formaDePago;
    }

    public void setFormaDePago(String formaDePago) {
        this.formaDePago = formaDePago;
    }

    @Override
    public String toString() {
        return "Facturas{" + "letra=" + letra + ", nroPedido=" + nroPedido + ", fecha=" + fecha + ", monto=" + monto + ", idCliente=" + idCliente + ", idAdministrador=" + idAdministrador + ", idProducto=" + idProducto + ", articulos=" + articulos + ", formaDePago=" + formaDePago + '}';
    }
    
}   
