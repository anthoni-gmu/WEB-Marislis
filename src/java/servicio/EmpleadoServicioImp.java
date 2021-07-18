package servicio;

import java.util.List;
import persistencia.Empleado;
import persistencia.EmpleadoDao;

public class EmpleadoServicioImp implements EmpleadoServicio {

    private EmpleadoDao edao;
    private Empleado em;

    public void setEdao(EmpleadoDao edao) {
        this.edao = edao;
    }

    public void setEm(Empleado em) {
        this.em = em;
    }
    
    

    @Override
    public String grabar(String cod, String nom, String tip, String usu, String pas) {
        em.setCod(cod);
        em.setNom(nom);
        em.setTip(tip);
        em.setPas(pas);
        em.setUsu(usu);
        return edao.grabar(em);
    }

    @Override
    public Object[] buscar(String cod) {
        em=edao.buscar(cod);
        if(em!=null){
            Object[]fil=new Object[4];
            fil[0]=em.getCod();
            fil[1]=em.getNom();
            fil[2]=em.getTip();
            fil[3]=em.getUsu();
            return fil;
        }
        return null;
    }

    @Override
    public List listar() {
       return edao.listar2();
    }

    @Override
    public String eliminar(String cod) {
        return edao.eliminar(cod);
    }

    @Override
    public String Actualizar(String cod, String tip, String pas) {
        em = edao.buscar(cod);
        em.setTip(tip);
        em.setPas(pas);
        return edao.actualizar(em);
    }

}
