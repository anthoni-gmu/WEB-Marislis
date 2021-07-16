
package vista;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;


public class ArticuloForm extends org.apache.struts.action.ActionForm {
      String cod,nom,acc;
      double pre;
      int sto;

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAcc() {
        return acc;
    }

    public void setAcc(String acc) {
        this.acc = acc;
    }

    public double getPre() {
        return pre;
    }

    public void setPre(double pre) {
        this.pre = pre;
    }

    public int getSto() {
        return sto;
    }

    public void setSto(int sto) {
        this.sto = sto;
    }
   
      
      
      
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (cod == null || cod.length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            
        }
        return errors;
    }
}
