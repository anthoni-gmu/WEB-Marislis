
package servicio;

import java.util.List;

public interface CompraServicio {
    public Object[] nuevaCompra(String cod);
    public List agregarArticulo(String cod,String nom,String pre,String can);
    public List quitarArticulo(String cod);
    public String grabarCompra(String num,String fec,double tot,String ruc,String cod,List detalleCompra);
    public String grabarVenta(String num,String fec,double tot,String dni,String cod,List detalleVenta);
}
