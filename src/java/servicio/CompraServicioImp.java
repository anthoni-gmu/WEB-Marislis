package servicio;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import negocio.*;
import persistencia.Compra;
import persistencia.Articulo;
import persistencia.Cliente;
import persistencia.CompraDao;
import persistencia.CompraDaoImp;
import persistencia.DetalleCompraDao;
import persistencia.DetalleCompraDaoImp;
import persistencia.DetalleVentaDao;
import persistencia.DetalleVentaDaoImp;
import persistencia.Detallecompra;
import persistencia.Detalleventa;
import persistencia.Empleado;
import persistencia.Proveedor;
import persistencia.Venta;
import persistencia.VentaDao;
import persistencia.VentaDaoImp;

public class CompraServicioImp implements CompraServicio {

    public Compras lol = new Compras();
    
    private Compra compra;
    private CompraDao compraDao;
    private DetalleCompraDao DetalleCompraDao;

    private VentaDao VentaDao;
    private DetalleVentaDao DetalleVentaDao;
    private Venta venta;
    private Articulo art;
    private Proveedor pro;
    private Empleado em;

    public CompraServicioImp() {
        compraDao = new CompraDaoImp();
        VentaDao = new VentaDaoImp();
        DetalleCompraDao = new DetalleCompraDaoImp();
        DetalleVentaDao =new DetalleVentaDaoImp();
    }

    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
    }

    public Articulo getArt() {
        return art;
    }

    public void setArt(Articulo art) {
        this.art = art;
    }

    public Proveedor getPro() {
        return pro;
    }

    public void setPro(Proveedor pro) {
        this.pro = pro;
    }

    public Empleado getEm() {
        return em;
    }

    public void setEm(Empleado em) {
        this.em = em;
    }

    public Detallecompra getDetallecompra() {
        return Detallecompra;
    }

    public void setDetallecompra(Detallecompra Detallecompra) {
        this.Detallecompra = Detallecompra;
    }

    public Detalleventa getDetalleventa() {
        return Detalleventa;
    }

    public void setDetalleventa(Detalleventa Detalleventa) {
        this.Detalleventa = Detalleventa;
    }

    private Detallecompra Detallecompra;
    private Detalleventa Detalleventa;

    public void setCompraDao(CompraDao compraDao) {
        this.compraDao = compraDao;
    }

    public void setDetalleCompraDao(DetalleCompraDao DetalleCompraDao) {
        this.DetalleCompraDao = DetalleCompraDao;
    }

    public void setVentaDao(VentaDao VentaDao) {
        this.VentaDao = VentaDao;
    }

    public void setDetalleVentaDao(DetalleVentaDao DetalleVentaDao) {
        this.DetalleVentaDao = DetalleVentaDao;
    }

    public void setVenta(Venta venta) {
        this.venta = venta;
    }

    @Override
    public Object[] nuevaCompra(String cod) {
        lol.setNum("C00006");
        lol.setFec(getFec());
        lol.setEmp(verEmpleado(cod));
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
        lol.quitarLinea(cod);
        return verCesta();
    }

    //Metodos internos
    private Object[] verCompra() {
        Object[] fil = new Object[5];
        fil[0] = lol.getNum();
        fil[1] = lol.getFec();
        fil[2] = lol.getTol();
        fil[3] = lol.getEmp().getCod();

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

    @Override
    public String grabarCompra(String num, String fec, double tot, String ruc, String cod,List detalleCompra) {
        Compra campo1 = new Compra();
        campo1.setNum(num);
        campo1.setFec(fec);
        campo1.setTot(tot);
        Proveedor campopro = new Proveedor();
        campopro.setRuc(ruc);
        campo1.setRuc(campopro);
        Empleado campoemp = new Empleado();
        campoemp.setCod(cod);
        campo1.setCod(campoemp);
        String msg = compraDao.grabar(campo1);
        for (int i = 0; i < detalleCompra.size(); i++) {
            Object[] f = (Object[])detalleCompra.get(i);
            Detallecompra decom = new Detallecompra();
            Articulo articu=new Articulo();
            articu.setCod((String) f[0]);
            decom.setArticulo(articu);
            decom.setCompra(campo1);
            decom.setCan((int) f[3]);
            DetalleCompraDao.grabar(decom);
        }
        return msg;
    }

    @Override
        public String grabarVenta(String num, String fec, double tot, String dni, String cod,List detalleVenta) {
       Venta campo1 = new Venta();
        campo1.setNum(num);
        campo1.setFec(fec);
        campo1.setTot(tot);
        Cliente campodni = new Cliente();
        campodni.setDni(dni);
        campo1.setDni(campodni);
        Empleado campoemp = new Empleado();
        campoemp.setCod(cod);
        campo1.setCod(campoemp);
        String msg = VentaDao.grabar(campo1);
        for (int i = 0; i < detalleVenta.size(); i++) {
            Object[] f = (Object[])detalleVenta.get(i);
            Detalleventa decom = new Detalleventa();
            Articulo articu=new Articulo();
            articu.setCod((String) f[0]);
            decom.setArticulo(articu);
            decom.setVenta(campo1);
            decom.setCan((int) f[3]);
            DetalleVentaDao.grabar(decom);
        }
        return msg;
    }

    @Override
    public int listarC() {
     List lista=compraDao.listar();
     int num=lista.size();
     num+=100000;
     return num;
    }

    @Override
    public int listarV() {
       List lista=VentaDao.listar();
     int num=lista.size();
     num+=100000;
     return num;
    }

}
