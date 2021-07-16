package servicio;

import java.util.List;
import persistencia.*;

public class AccesoServicioImp implements AccesoServicio {

    private EmpleadoDao ed;

    public void setEd(EmpleadoDao ed) {
        this.ed = ed;
    }

  

    
    @Override
    public Object[] validar(String usu, String pas) {
        List lis = ed.listar();
        if (lis != null) {
            Object[] fil = new Object[5];
            for (int i = 0; i < lis.size(); i++) {
                Empleado emp = (Empleado) lis.get(i);
                if (emp.getUsu().equals(usu) && emp.getPas().equals(pas)) {
                    fil[0] = emp.getCod();
                    fil[1] = emp.getNom();
                    return fil;

                }
            }
        }

        return null;
    }

}
