package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Compra;
import persistencia.Venta;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-10T21:40:16")
@StaticMetamodel(Empleado.class)
public class Empleado_ { 

    public static volatile SingularAttribute<Empleado, String> pas;
    public static volatile SingularAttribute<Empleado, String> usu;
    public static volatile ListAttribute<Empleado, Venta> ventaList;
    public static volatile SingularAttribute<Empleado, String> cod;
    public static volatile SingularAttribute<Empleado, String> tip;
    public static volatile ListAttribute<Empleado, Compra> compraList;
    public static volatile SingularAttribute<Empleado, String> nom;

}