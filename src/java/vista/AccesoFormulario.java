
package vista;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;


public class AccesoFormulario extends org.apache.struts.action.ActionForm {
    
    private String usu,pas;

    public String getUsu() {
        return usu;
    }

    public void setUsu(String usu) {
        this.usu = usu;
    }

    public String getPas() {
        return pas;
    }

    public void setPas(String pas) {
        this.pas = pas;
    }
    
    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (usu == null || usu.length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
        }
        if (pas == null || pas.length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
        }
        return errors;
    }
}
