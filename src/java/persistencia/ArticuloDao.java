
package persistencia;

import java.util.List;
import persistencia.exceptions.PreexistingEntityException;

public interface ArticuloDao {
    public void create(Articulo articulo) throws PreexistingEntityException, Exception;
    public String grabar(Articulo a);
    public Articulo buscar(String cod);
    public String eliminar(String cod);
    public String actualizar(Articulo a);
    public List listar();
}
