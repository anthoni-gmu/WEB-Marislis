package vista;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.EmpleadoServicio;

public class EmpleadoControl extends org.apache.struts.action.Action {

    private Presentador p;
    private EmpleadoServicio ese;

    public void setP(Presentador p) {
        this.p = p;
    }

    public void setEse(EmpleadoServicio ese) {
        this.ese = ese;
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        EmpleadoForm f = (EmpleadoForm) form;
        String acc = f.getAcc();
        if (acc.equals("Grabar")) {
            p.setMsg(ese.grabar(f.getCod(), f.getNom(), f.getTip(), f.getUsu(), f.getPas()));
            request.getSession().setAttribute("p", p);

            List lisE = ese.listar();
            request.getSession().setAttribute("lisE", lisE);

            f.setPas("");
            f.setNom("");
            f.setCod("");
            f.setUsu("");
            f.setTip("");
        }
        if (acc.equals("Actualizar")) {
            p.setMsg(ese.Actualizar(f.getCod(), f.getTip(), f.getPas()));
            request.getSession().setAttribute("p", p);

            List lisE = ese.listar();
            request.getSession().setAttribute("lisE", lisE);

            f.setPas("");
            f.setNom("");
            f.setCod("");
            f.setUsu("");
            f.setTip("");
        }
        if (acc.equals("Eliminar")) {
            p.setMsg(ese.eliminar(f.getCod()));
            request.getSession().setAttribute("p", p);

            List lisE = ese.listar();
            request.getSession().setAttribute("lisE", lisE);

            f.setCod("");

        }
        if (acc.equals("Buscar")) {
            p.setBusE(ese.buscar(f.getCod()));
            f.setCod("");
        }
        if (acc.equals("Empleado")) {
            List lisE = ese.listar();

            request.getSession().setAttribute("p", p);
            request.getSession().setAttribute("lisE", lisE);
            f.setCod("");

        }
        return mapping.findForward("emp");
    }
}
