package negocio;

import java.util.ArrayList;
import java.util.List;
import persistencia.Articulo;
import persistencia.Empleado;
import persistencia.Proveedor;


public class Compra {
    private String num,fec;
    private Proveedor pro;
    private Empleado emp;
    private List cesC=new ArrayList();

    public void setCesC(List cesC) {
        this.cesC = cesC;
    }

    
    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getFec() {
        return fec;
    }

    public void setFec(String fec) {
        this.fec = fec;
    }

    public Proveedor getPro() {
        return pro;
    }

    public void setPro(Proveedor pro) {
        this.pro = pro;
    }

    public Empleado getEmp() {
        return emp;
    }

    public void setEmp(Empleado emp) {
        this.emp = emp;
    }

    public List getCesC() {
        return cesC;
    }
    
    //-----------
    
    public void agregarLinea(Articulo art,int can){
        LineaCompra linC=new LineaCompra(art,can);
        cesC.add(linC);
    }
    public void quitarLinea(String cod){
        for(int i=0;i<cesC.size();i++){
            LineaCompra linC=(LineaCompra)cesC.get(i);
            if(linC.getArt().getCod().equals(cod)){
                cesC.remove(i);
            }
        }
    }
    public double getTol(){
        double tot=0;
        for (int i = 0; i < cesC.size(); i++) {
            LineaCompra linC=(LineaCompra)cesC.get(i);
            tot+=linC.getImpC();
        }
        return tot;
    }
    
    
}
