
package entidades;

public class Articulos {
    private int codigo;
    private int idProveedor;
    private String tipo;
    private String articulo;
    private int stockActual;
    private int stockMinimo;
    private int stockMaximo;
    private double precio;

    public Articulos() {}

    public Articulos(int codigo, int idProveedor, String tipo, String articulo, int stockActual, int stockMinimo, int stockMaximo, double precio) {
        this.codigo = codigo;
        this.idProveedor = idProveedor;
        this.tipo = tipo;
        this.articulo = articulo;
        this.stockActual = stockActual;
        this.stockMinimo = stockMinimo;
        this.stockMaximo = stockMaximo;
        this.precio = precio;
    }

    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getArticulo() {
        return articulo;
    }

    public void setArticulo(String articulo) {
        this.articulo = articulo;
    }
    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getStockActual() {
        return stockActual;
    }

    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }

    public int getStockMinimo() {
        return stockMinimo;
    }

    public void setStockMinimo(int stockMinimo) {
        this.stockMinimo = stockMinimo;
    }

    public int getStockMaximo() {
        return stockMaximo;
    }

    public void setStockMaximo(int stockMaximo) {
        this.stockMaximo = stockMaximo;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    @Override
    public String toString() {
        return "Articulo{" + "codigo=" + codigo + ", idProveedor=" + idProveedor + ", tipo=" + tipo + ", articulo=" + articulo + ", stockActual=" + stockActual + ", stockMinimo=" + stockMinimo + ", stockMaximo=" + stockMaximo + ", precio=" + precio + '}';
    }

    

    
        
}
