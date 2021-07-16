
package servicio;

import java.util.List;

public interface ClienteServicio {
    public String grabar(String dni, String nom,String dir);
    public Object[] buscar(String dni);
    public List listar();
    public String eliminar(String dni);
}
