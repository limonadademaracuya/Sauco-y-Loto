
package entidades.administradores;

public class Administradores {
    private int idAdministrador;
    private String nombre;
    private int dni;
    private int telefono;
    private String email;

    public Administradores() {}

    public Administradores(int idAdministrador, String nombre, int dni, int telefono, String email) {
        this.idAdministrador = idAdministrador;
        this.nombre = nombre;
        this.dni = dni;
        this.telefono = telefono;
        this.email = email;
    }

    public int getIdAdministrador() {
        return idAdministrador;
    }

    public void setIdAdministrador(int idAdministrador) {
        this.idAdministrador = idAdministrador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Administradores{" + "idAdministrador=" + idAdministrador + ", nombre=" + nombre + ", dni=" + dni + ", telefono=" + telefono + ", email=" + email + '}';
    }
    
    
}
