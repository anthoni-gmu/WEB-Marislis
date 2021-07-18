package servicio;

import java.util.List;
import persistencia.Proveedor;
import persistencia.ProveedorDao;

public class ProvedorServicioImp implements ProvedorServicio{
private ProveedorDao pd;
private Proveedor pro;

    public void setPd(ProveedorDao pd) {
        this.pd = pd;
    }

    public void setPro(Proveedor pro) {
        this.pro = pro;
    }


    @Override
    public String grabar(String ruc, String nom, String dir) {
        pro.setRuc(ruc);
        pro.setDir(dir);
        pro.setNom(nom);
        return pd.grabar(pro);
    }

    @Override
    public Object[] buscar(String ruc) {
       pro=pd.buscar(ruc);
        if(pro!=null){
            Object[]fil=new Object[3];
            fil[0]=pro.getRuc();
            fil[1]=pro.getNom();
            fil[2]=pro.getDir();
            return fil;
        }
        return null;
    }

    @Override
    public List listar() {
        return pd.listar();
    }

    @Override
    public String eliminar(String ruc) {
        return pd.eliminar(ruc);
    }

    @Override
    public String actualizar(String ruc, String dir) {
       pro = pd.buscar(ruc);
        pro.setDir(dir);
        return pd.actualizar(pro);
    }
    
}
