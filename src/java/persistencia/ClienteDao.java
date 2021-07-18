
package persistencia;

import java.util.List;
import persistencia.exceptions.PreexistingEntityException;

public interface ClienteDao {
    public void create(Cliente cliente) throws PreexistingEntityException, Exception;
    public String grabar(Cliente c);
    public Cliente buscar(String dni);
    public String eliminar(String dni);
    public List listar();
     public String actualizar(Cliente c);
}
