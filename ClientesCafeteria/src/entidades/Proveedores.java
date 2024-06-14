
package entidades;

import java.util.ArrayList;
import java.util.List;

public class Proveedores {
    private int idProveedor;
    private String nombreProveedor;
    private int stockActual;
    private int idArticulo;
    private int telefonoProveedor;
    private String email;
    private List<Articulos> articulos;
    

    public Proveedores() {}

    public Proveedores(int idProveedor, String nombreProveedor, int stockActual, int idArticulo, int telefonoProveedor, String email, List<Articulos> articulos) {
        this.idProveedor = idProveedor;
        this.nombreProveedor = nombreProveedor;
        this.stockActual = stockActual;
        this.idArticulo = idArticulo;
        this.telefonoProveedor = telefonoProveedor;
        this.email = email;
        this.articulos = articulos;
    }
    
    
    public boolean add(Articulos e) {
        return articulos.add(e);
    }

    public boolean remove(Object o) {
        return articulos.remove(o);
    }

    public List<Articulos> getArticulos() {
        return articulos;
    }

    public void setArticulos(List<Articulos> articulos) {
        this.articulos = articulos;
    }
    
    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public int getStockActual() {
        return stockActual;
    }

    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }

    public String getNombreProveedor() {
        return nombreProveedor;
    }

    public void setNombreProveedor(String nombreProveedor) {
        this.nombreProveedor = nombreProveedor;
    }

    public int getTelefonoProveedor() {
        return telefonoProveedor;
    }

    public void setTelefonoProveedor(int telefonoProveedor) {
        this.telefonoProveedor = telefonoProveedor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdArticulo() {
        return idArticulo;
    }

    public void setIdArticulo(int idArticulo) {
        this.idArticulo = idArticulo;
    }

    @Override
    public String toString() {
        return "Proveedores{" + "idProveedor=" + idProveedor + ", nombreProveedor=" + nombreProveedor + ", stockActual=" + stockActual + ", idArticulo=" + idArticulo + ", telefonoProveedor=" + telefonoProveedor + ", email=" + email + ", articulos=" + articulos + '}';
    }

}
