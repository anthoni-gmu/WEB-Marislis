package servicio;

import java.util.List;

public interface EmpleadoServicio {
     public String grabar(String cod, String nom, String tip,String usu,String pas);

    public Object[] buscar(String cod);

    public List listar();

    public String eliminar(String cod);
    
    public String Actualizar(String cod,String tip,String pas);

}
