package persistencia;

import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import persistencia.Venta;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-07-10T21:40:16")
@StaticMetamodel(Cliente.class)
public class Cliente_ { 

    public static volatile ListAttribute<Cliente, Venta> ventaList;
    public static volatile SingularAttribute<Cliente, String> dir;
    public static volatile SingularAttribute<Cliente, String> nom;
    public static volatile SingularAttribute<Cliente, String> dni;

}