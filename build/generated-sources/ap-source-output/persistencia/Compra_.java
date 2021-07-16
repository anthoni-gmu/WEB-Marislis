package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Detallecompra;
import persistencia.Empleado;
import persistencia.Proveedor;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-10T21:40:16")
@StaticMetamodel(Compra.class)
public class Compra_ { 

    public static volatile SingularAttribute<Compra, Proveedor> ruc;
    public static volatile ListAttribute<Compra, Detallecompra> detallecompraList;
    public static volatile SingularAttribute<Compra, String> fec;
    public static volatile SingularAttribute<Compra, String> num;
    public static volatile SingularAttribute<Compra, Double> tot;
    public static volatile SingularAttribute<Compra, Empleado> cod;

}