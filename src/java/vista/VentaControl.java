package vista;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import servicio.ArticuloServicio;
import servicio.ClienteServicio;
import servicio.CompraServicio;
import servicio.CompraServicioImp;

public class VentaControl extends org.apache.struts.action.Action {

    private CompraServicio venSer;
    private Presentador p;
    private ClienteServicio cs;
    private ArticuloServicio arts;

    public VentaControl() {
        venSer = new CompraServicioImp();
    }

    public void setCs(ClienteServicio cs) {
        this.cs = cs;
    }

    

    public void setP(Presentador p) {
        this.p = p;
    }

    public void setArts(ArticuloServicio arts) {
        this.arts = arts;
    }
    

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Date myDate = new Date();
        VentaForm f = (VentaForm)form;

        String acc = f.getAcc();
        if (acc.equals("Nueva Venta")) {
            String cod = request.getParameter("cod");

            Object[] datos = new Object[3];
            datos[0] = "100000";
            datos[1] = new SimpleDateFormat("dd-MM-yyyy").format(myDate);
            datos[2] = cod;
            p.setDatos(datos);
            request.getSession().setAttribute("p", p);

            List lisA = arts.listar();
            request.getSession().setAttribute("lisA", lisA);

        }
        if (acc.equals("Buscar Dni")) {
            p.setBusPro(cs.buscar(f.getDni()));
            f.setDni("");
        }

        if (acc.equals("Agregar")) {
            String codi = request.getParameter("codi");
            String nom = request.getParameter("nom");
            String pre = request.getParameter("pre");
            String can = request.getParameter("can");
   
            p.setDetalleLista(venSer.agregarArticulo(codi, nom, pre, can));

        }
          if (acc.equals("Quitar")) {
            String cod = request.getParameter("cod");
            p.setDetalleLista(venSer.quitarArticulo(cod));

        }
           if (acc.equals("Grabar")) {
               System.out.println(f.getNum());
               System.out.println(f.getCod());
               System.out.println(f.getFec());
               System.out.println(f.getTot());
               System.out.println(f.getDni());
            List detalleLista=p.getDetalleLista();
            p.setMsg(venSer.grabarVenta(f.getNum(), f.getFec(),f.getTot() , f.getDni(), f.getCod(),detalleLista));
        }
        return mapping.findForward("Venta");
    }
}
