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
        cli = cd.buscar(dni);
        if (cli != null) {
            Object[] fil = new Object[3];
            fil[0] = cli.getDni();
            fil[1] = cli.getNom();
            fil[2] = cli.getDir();
            return fil;
        }
        return null;
    }

    @Override
    public List listar() {
        return cd.listar();
    }

    @Override
    public String eliminar(String dni) {
        return cd.eliminar(dni);
    }

    @Override
    public String Actualizar(String dni, String dir) {
        cli = cd.buscar(dni);
        cli.setDir(dir);
        return cd.actualizar(cli);
    }

}
