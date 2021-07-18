package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Cliente;
import persistencia.Detalleventa;
import persistencia.Empleado;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-18T14:11:56")
@StaticMetamodel(Venta.class)
public class Venta_ { 

    public static volatile ListAttribute<Venta, Detalleventa> detalleventaList;
    public static volatile SingularAttribute<Venta, String> fec;
    public static volatile SingularAttribute<Venta, String> num;
    public static volatile SingularAttribute<Venta, Double> tot;
    public static volatile SingularAttribute<Venta, Empleado> cod;
    public static volatile SingularAttribute<Venta, Cliente> dni;

}