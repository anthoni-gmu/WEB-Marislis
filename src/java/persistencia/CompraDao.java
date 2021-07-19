package persistencia;

import java.util.List;
import persistencia.exceptions.PreexistingEntityException;

public interface CompraDao {

    public void create(Compra compra) throws PreexistingEntityException, Exception;

    public String grabar(Compra compra);
    public List listar();

}
