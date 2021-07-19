package vista;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.*;

public class AccesoControl extends org.apache.struts.action.Action {

    private AccesoServicio as;
    private Presentador p;

    public void setAs(AccesoServicio as) {
        this.as = as;
    }

    public void setP(Presentador p) {
        this.p = p;
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        AccesoFormulario f = (AccesoFormulario) form;
        Object[] fill = as.validar(f.getUsu(), f.getPas());
        if (fill != null) {
            request.getSession().setAttribute("fill", fill);
            return mapping.findForward("Menu");

        } else {
            p.setMsg("Error al Iniciar");
            request.getSession().setAttribute("p", p);

            return mapping.findForward("Mensaje");
        }
    }
}
