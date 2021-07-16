package vista;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.ClienteServicio;

public class ClienteControl extends org.apache.struts.action.Action {

    private Presentador p;
    private ClienteServicio cs;

    public void setCs(ClienteServicio cs) {
        this.cs = cs;
    }

    public void setP(Presentador p) {
        this.p = p;
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        ClienteForm f = (ClienteForm) form;
        String acc = f.getAcc();
        if (acc.equals("Grabar")) {
            p.setMsg(cs.grabar(f.getDni(), f.getNom(), f.getDir()));
            request.getSession().setAttribute("p", p);

            List lisC = cs.listar();
            request.getSession().setAttribute("lisC", lisC);

            f.setDir("");
            f.setNom("");
            f.setDni("");
        }
        if (acc.equals("Eliminar")) {
            p.setMsg(cs.eliminar(f.getDni()));
            request.getSession().setAttribute("p", p);

            List lisC = cs.listar();
            request.getSession().setAttribute("lisC", lisC);

            f.setDir("");
            f.setNom("");
            f.setDni("");
        }
        if (acc.equals("Buscar")) {
            p.setFil(cs.buscar(f.getDir()));
            System.out.println(p.getFil()[2]);
            f.setDir("");

        }
        if (acc.equals("Cliente")) {
            List lisC = cs.listar();
            request.getSession().setAttribute("p", p);
            request.getSession().setAttribute("lisC", lisC);
            f.setDni("");

        }

        return mapping.findForward("cli");
    }
}
