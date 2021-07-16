package vista;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.ArticuloServicio;

public class ArticuloControl extends org.apache.struts.action.Action {

    private Presentador p;
    private ArticuloServicio arts;

    public void setArts(ArticuloServicio arts) {
        this.arts = arts;
    }

    public void setP(Presentador p) {
        this.p = p;
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        ArticuloForm f = (ArticuloForm) form;
        String acc = f.getAcc();
        if (acc.equals("Grabar")) {
            p.setMsg(arts.grabar(f.getCod(), f.getNom(), f.getPre(), f.getSto()));
            request.getSession().setAttribute("p", p);

         List lisA = arts.listar();
            request.getSession().setAttribute("lisA", lisA);

            f.setCod("");
            f.setNom("");
            f.setPre(0);
            f.setSto(0);
        }
        if (acc.equals("Eliminar")) {
            p.setMsg(arts.eliminar(f.getCod()));
            request.getSession().setAttribute("p", p);

        List lisA = arts.listar();
            request.getSession().setAttribute("lisA", lisA);

            f.setCod("");
            f.setNom("");
            f.setPre(0);
            f.setSto(0);
        }
        if (acc.equals("Buscar")) {
            p.setFil(arts.buscar(f.getCod()));
            f.setCod("");
            f.setNom("");
            f.setPre(0);
            f.setSto(0);

        }
        if (acc.equals("Articulo")) {
            List lisA = arts.listar();
            request.getSession().setAttribute("lisA", lisA);
            request.getSession().setAttribute("p", p);

            f.setCod("");

        }
        return mapping.findForward("art");
    }
}
