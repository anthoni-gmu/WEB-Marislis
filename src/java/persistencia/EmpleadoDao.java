package persistencia;

import java.util.List;
import persistencia.exceptions.PreexistingEntityException;

public interface EmpleadoDao {

    public void create(Empleado empleado) throws PreexistingEntityException, Exception;

    public List listar2();

    public List listar();

    public String grabar(Empleado e);

    public Empleado buscar(String cod);

    public String eliminar(String cod);

    public String actualizar(Empleado e);

}
