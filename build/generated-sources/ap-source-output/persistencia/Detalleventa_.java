package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Articulo;
import persistencia.DetalleventaPK;
import persistencia.Venta;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-18T14:11:56")
@StaticMetamodel(Detalleventa.class)
public class Detalleventa_ { 

    public static volatile SingularAttribute<Detalleventa, Integer> can;
    public static volatile SingularAttribute<Detalleventa, Venta> venta;
    public static volatile SingularAttribute<Detalleventa, DetalleventaPK> detalleventaPK;
    public static volatile SingularAttribute<Detalleventa, Articulo> articulo;

}