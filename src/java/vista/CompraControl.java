package vista;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.*;

public class CompraControl extends org.apache.struts.action.Action {

    private Presentador p;
    private ArticuloServicio arts;
    private ProvedorServicio ps;
    private CompraServicio comSer;

    public CompraControl() {
        comSer = new CompraServicioImp();
    }

    public void setP(Presentador p) {
        this.p = p;
    }

    public void setArts(ArticuloServicio arts) {
        this.arts = arts;
    }

    public void setPs(ProvedorServicio ps) {
        this.ps = ps;
    }

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Date myDate = new Date();
        CompraForm f = (CompraForm) form;

        String acc = f.getAcc();
        if (acc.equals("Nueva compra")) {
            String cod = request.getParameter("cod");

            Object[] datos = new Object[3];
            datos[0] = comSer.listarC();
            datos[1] = new SimpleDateFormat("dd-MM-yyyy").format(myDate);
            datos[2] = cod;
            p.setDatos(datos);
            request.getSession().setAttribute("p", p);

            List lisA = arts.listar();
            request.getSession().setAttribute("lisA", lisA);

        }
        if (acc.equals("Buscar Proveedor")) {
            p.setBusPro(ps.buscar(f.getRuc()));
            f.setRuc("");
        }

        if (acc.equals("Agregar")) {
            String codi = request.getParameter("codi");
            String nom = request.getParameter("nom");
            String pre = request.getParameter("pre");
            String can = request.getParameter("can");
           
            p.setDetalleLista(comSer.agregarArticulo(codi, nom, pre, can));

        }
        if (acc.equals("Quitar")) {
            String cod = request.getParameter("cod");
            p.setDetalleLista(comSer.quitarArticulo(cod));

        }
        if (acc.equals("Grabar")) {
            List detalleLista=p.getDetalleLista();
            p.setMsg(comSer.grabarCompra(f.getNum(), f.getFec(),f.getTot() , f.getRuc(), f.getCod(),detalleLista));
        }

        return mapping.findForward("com");
    }
}
