package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Articulo;
import persistencia.Compra;
import persistencia.DetallecompraPK;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-18T14:11:56")
@StaticMetamodel(Detallecompra.class)
public class Detallecompra_ { 

    public static volatile SingularAttribute<Detallecompra, Integer> can;
    public static volatile SingularAttribute<Detallecompra, Compra> compra;
    public static volatile SingularAttribute<Detallecompra, DetallecompraPK> detallecompraPK;
    public static volatile SingularAttribute<Detallecompra, Articulo> articulo;

}