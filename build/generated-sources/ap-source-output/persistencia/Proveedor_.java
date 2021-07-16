package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Compra;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-10T21:40:16")
@StaticMetamodel(Proveedor.class)
public class Proveedor_ { 

    public static volatile SingularAttribute<Proveedor, String> ruc;
    public static volatile SingularAttribute<Proveedor, String> dir;
    public static volatile ListAttribute<Proveedor, Compra> compraList;
    public static volatile SingularAttribute<Proveedor, String> nom;

}