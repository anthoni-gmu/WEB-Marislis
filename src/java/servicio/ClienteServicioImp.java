package servicio;

import java.util.List;
import persistencia.Cliente;
import persistencia.ClienteDao;

public class ClienteServicioImp implements ClienteServicio {

    private ClienteDao cd;
    private Cliente cli;

    public void setCd(ClienteDao cd) {
        this.cd = cd;
    }

    public void setCli(Cliente cli) {
        this.cli = cli;
    }

 

    @Override
    public String grabar(String dni, String nom, String dir) {
        cli.setDni(dni);
        cli.setDir(dir);
        cli.setNom(nom);
        return cd.grabar(cli);
    }

    @Override
    public Object[] buscar(String dni) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listar() {
        return cd.listar();
    }

    @Override
    public String eliminar(String dni) {
        return cd.eliminar(dni);
    }

}
