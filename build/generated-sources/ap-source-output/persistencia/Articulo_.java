package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Detallecompra;
import persistencia.Detalleventa;
import persistencia.Kardex;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-18T14:11:56")
@StaticMetamodel(Articulo.class)
public class Articulo_ { 

    public static volatile ListAttribute<Articulo, Detalleventa> detalleventaList;
    public static volatile SingularAttribute<Articulo, Double> pre;
    public static volatile ListAttribute<Articulo, Detallecompra> detallecompraList;
    public static volatile ListAttribute<Articulo, Kardex> kardexList;
    public static volatile SingularAttribute<Articulo, String> cod;
    public static volatile SingularAttribute<Articulo, String> nom;
    public static volatile SingularAttribute<Articulo, Integer> sto;

}