package negocio;

import persistencia.Articulo;

public class LineaCompra {
    private Articulo art;
   private int can;

    public LineaCompra(Articulo art, int can) {
        this.art = art;
        this.can = can;
    }

    public LineaCompra() {
    }

  

    public Articulo getArt() {
        return art;
    }

    public void setArt(Articulo art) {
        this.art = art;
    }

    public int getCan() {
        return can;
    }

    public void setCan(int can) {
        this.can = can;
    }
   
   public double getImpC(){
       Double newPre=art.getPre()-(art.getPre()*0.2);
       return newPre*can;
   }
}
