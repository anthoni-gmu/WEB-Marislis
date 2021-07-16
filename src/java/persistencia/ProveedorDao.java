
package persistencia;

import java.util.List;
import persistencia.exceptions.PreexistingEntityException;

public interface ProveedorDao {
    public void create(Proveedor proveedor) throws PreexistingEntityException, Exception;
    public String grabar(Proveedor p);
    public Proveedor buscar(String ruc);
    public String eliminar(String ruc);
    public List listar();
}
