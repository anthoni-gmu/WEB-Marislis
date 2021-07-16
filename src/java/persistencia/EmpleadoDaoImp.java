
package persistencia;

import java.util.List;

public class EmpleadoDaoImp implements EmpleadoDao{

    private EmpleadoJpaController ejc;

    public void setEjc(EmpleadoJpaController ejc) {
        this.ejc = ejc;
    }
    
    
    @Override
    public List listar() {
        return ejc.findEmpleadoEntities();
    }
    
}
