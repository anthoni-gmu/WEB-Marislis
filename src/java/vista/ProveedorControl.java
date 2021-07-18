package vista;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.ProvedorServicio;

public class ProveedorControl extends org.apache.struts.action.Action {

    private Presentador p;
    private ProvedorServicio ps;

    public void setP(Presentador p) {
        this.p = p;
    }

    public void setPs(ProvedorServicio ps) {
        this.ps = ps;
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ProvedorForm f = (ProvedorForm) form;
        String acc = f.getAcc();
        if (acc.equals("Grabar")) {
            p.setMsg(ps.grabar(f.getRuc(), f.getNom(), f.getDir()));
            request.getSession().setAttribute("p", p);
            
              List lista = ps.listar();
            request.getSession().setAttribute("lista", lista);
            
            f.setDir("");
            f.setNom("");
            f.setRuc("");
        }
        if (acc.equals("Eliminar")) {
            p.setMsg(ps.eliminar(f.getRuc()));
            request.getSession().setAttribute("p", p);

            List lista = ps.listar();
            request.getSession().setAttribute("lista", lista);

            f.setDir("");
            f.setNom("");
            f.setRuc("");
        }
        if (acc.equals("Buscar")) {
            p.setBusP(ps.buscar(f.getRuc()));
            f.setRuc("");

        }
        if (acc.equals("Proveedor")) {
            List lista = ps.listar();
            request.getSession().setAttribute("p", p);
            request.getSession().setAttribute("lista", lista);
            f.setRuc("");

        }

        return mapping.findForward("msg");
    }
}
