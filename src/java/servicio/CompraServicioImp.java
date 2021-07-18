package servicio;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import negocio.*;
import persistencia.Articulo;
import persistencia.Empleado;

public class CompraServicioImp implements CompraServicio {

    private Compra com;
    public Compra lol=new Compra();    


    @Override
    public Object[] nuevaCompra(String cod) {
        com = new Compra();
        com.setNum("C00006");
        com.setFec(getFec());
        com.setEmp(verEmpleado(cod));
        return verCompra();
    }

    @Override
    public List agregarArticulo(String cod, String nom, String pre, String can) {
        Articulo art = new Articulo(cod, nom, Double.parseDouble(pre));
        lol.agregarLinea(art, Integer.parseInt(can));

        
        
        
        
        return verCesta();
    }

    @Override
    public List quitarArticulo(String cod) {
        com.quitarLinea(cod);
        return verCesta();
    }

    @Override
    public String grabarCompra(String cod) {
        return null;
    }

    //Metodos internos
    private Object[] verCompra() {
        Object[] fil = new Object[5];
        fil[0] = com.getNum();
        fil[1] = com.getFec();
        fil[2] = com.getTol();
        fil[3] = com.getEmp().getCod();

        return fil;
    }

    private String getFec() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        return sdf.format(new Date());
    }

    private Empleado verEmpleado(String cod) {
        Empleado emp = new Empleado();
        emp.setCod(cod);
        return emp;
    }

    private List verCesta() {
        List lis = new ArrayList();
        System.out.println();
        for (int i = 0; i < lol.getCesC().size(); i++) {
            LineaCompra lin = (LineaCompra) lol.getCesC().get(i);
            Object[] fil = new Object[6];
            fil[0] = lin.getArt().getCod();
            fil[1] = lin.getArt().getNom();
            fil[2] = lin.getArt().getPre();
            fil[3] = lin.getCan();
            fil[4] = lin.getImpC();

            fil[5] = lol.getTol();
            lis.add(fil);

        }
        return lis;
    }

}
