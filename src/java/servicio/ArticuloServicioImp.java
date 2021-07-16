package servicio;

import java.util.List;
import persistencia.Articulo;
import persistencia.ArticuloDao;

public class ArticuloServicioImp implements ArticuloServicio {

    private ArticuloDao ad;
    private Articulo art;

    public void setAd(ArticuloDao ad) {
        this.ad = ad;
    }

    public void setArt(Articulo art) {
        this.art = art;
    }



    
    @Override
    public String grabar(String cod, String nom, double pre, int sto) {
        art.setCod(cod);
        art.setNom(nom);
        art.setPre(pre);
        art.setSto(sto);
        return ad.grabar(art);
    }

    @Override
    public Object[] buscar(String cod) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List listar() {
        return ad.listar();
    }

    @Override
    public String eliminar(String cod) {
        return ad.eliminar(cod);
    }

}
