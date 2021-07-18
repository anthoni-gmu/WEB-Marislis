
package persistencia;

import java.util.List;
import persistencia.exceptions.PreexistingEntityException;

public class EmpleadoDaoImp implements EmpleadoDao{

    private EmpleadoJpaController ejc;

    public void setEjc(EmpleadoJpaController ejc) {
        this.ejc = ejc;
    }
    
    
    @Override
    public List listar() {
        return ejc.findEmpleadoEntities();
    }

    @Override
    public void create(Empleado empleado) throws PreexistingEntityException, Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String grabar(Empleado e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Empleado buscar(String cod) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String eliminar(String cod) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listar2() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String actualizar(Empleado e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
