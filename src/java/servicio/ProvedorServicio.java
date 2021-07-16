package servicio;

import java.util.List;

public interface ProvedorServicio {

    public String grabar(String ruc, String nom, String dir);

    public Object[] buscar(String ruc);

    public List listar();

    public String eliminar(String ruc);

}
