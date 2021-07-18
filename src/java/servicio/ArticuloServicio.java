
package servicio;

import java.util.List;

public interface ArticuloServicio {
    public String grabar(String cod, String nom, double pre,int sto);
    public Object[] buscar(String cod);
    public List listar();
    public String eliminar(String cod);
    public String Actualizar(String cod,double pre,int sto);
}
