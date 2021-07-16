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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listar() {
       return edao.listar2();
    }

    @Override
    public String eliminar(String cod) {
        return edao.eliminar(cod);
    }

}
