/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Beans;

/**
 *
 * @author Usuario
 */
public class Persona {
    private String dPersona;
    private String nPersona;
    private String aPersona;
    private String uPersona;
    private String pPersona;
    private String tPersona;
    private String yPersona;
    private String qPersona;
    

    public Persona(String dPersona, String nPersona, String aPersona, String uPersona, String pPersona,String tPersona,String yPersona,String qPersona) {
        this.dPersona = dPersona;
        this.nPersona = nPersona;
        this.aPersona = aPersona;
        this.uPersona = uPersona;
        this.pPersona = pPersona;
        this.tPersona = tPersona;
        this.yPersona = yPersona;
        this.qPersona = qPersona;
        
    }
 public String getdPersona() {
        return dPersona;
    }

    public void setdPersona(String dPersona) {
        this.dPersona = dPersona;
    }
   public String getnPersona() {
        return nPersona;
    }

    public void setnPersona(String nPersona) {
        this.nPersona = nPersona;
    }
    public String getaPersona() {
        return aPersona;
    }

    public void setaPersona(String aPersona) {
        this.aPersona = aPersona;
    }
    public String getuPersona() {
        return uPersona;
    }

    public void setuPersona(String uPersona) {
        this.uPersona = uPersona;
    }
    public String getpPersona() {
        return pPersona;
    }

    public void setpPersona(String pPersona) {
        this.pPersona = pPersona;
    }
    public String gettPersona() {
        return tPersona;
    }

    public void settPersona(String tPersona) {
        this.tPersona = tPersona;
    }
    public String getyPersona() {
        return yPersona;
    }

    public void setyPersona(String yPersona) {
        this.yPersona = yPersona;
    }
    public String getqPersona() {
        return qPersona;
    }

    public void setqPersona(String qPersona) {
        this.qPersona = qPersona;
    }
   
    
}
