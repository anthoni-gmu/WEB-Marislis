package vista;

public class Presentador {
    private String msg="mensaje";
    private Object[]fil={"","",""};

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object[] getFil() {
        return fil;
    }

    public void setFil(Object[] fil) {
        this.fil = fil;
    }
    
    private Object []busP={"","",""};
    private Object []busC={"","",""};
    private Object []busA={"","","","",""};
    private Object []busE={"","","",""};

    public Object[] getBusP() {
        return busP;
    }

    public void setBusP(Object[] busP) {
        this.busP = busP;
    }

    public Object[] getBusC() {
        return busC;
    }

    public void setBusC(Object[] busC) {
        this.busC = busC;
    }

    public Object[] getBusA() {
        return busA;
    }

    public void setBusA(Object[] busA) {
        this.busA = busA;
    }

    public Object[] getBusE() {
        return busE;
    }

    public void setBusE(Object[] busE) {
        this.busE = busE;
    }
    
    
    
}
