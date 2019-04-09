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
public class Vehiculo {
    private String dVehiculo;
    private String nVehiculo;
    private String aVehiculo;
    private String uVehiculo;
    private String pVehiculo;
    private String tVehiculo;
    private String yVehiculo;
    
    

    public Vehiculo(String dVehiculo, String nVehiculo, String aVehiculo, String uVehiculo, String pVehiculo,String tVehiculo,String yVehiculo) {
        this.dVehiculo = dVehiculo;
        this.nVehiculo = nVehiculo;
        this.aVehiculo = aVehiculo;
        this.uVehiculo = uVehiculo;
        this.pVehiculo = pVehiculo;
        this.tVehiculo = tVehiculo;
        this.yVehiculo = yVehiculo;
        
        
    }
 public String getdVehiculo() {
        return dVehiculo;
    }

    public void setdVehiculo(String dVehiculo) {
        this.dVehiculo = dVehiculo;
    }
   public String getnVehiculo() {
        return nVehiculo;
    }

    public void setnVehiculo(String nVehiculo) {
        this.nVehiculo = nVehiculo;
    }
    public String getaVehiculo() {
        return aVehiculo;
    }

    public void setaVehiculo(String aVehiculo) {
        this.aVehiculo = aVehiculo;
    }
    public String getuVehiculo() {
        return uVehiculo;
    }

    public void setuVehiculo(String uVehiculo) {
        this.uVehiculo = uVehiculo;
    }
    public String getpVehiculo() {
        return pVehiculo;
    }

    public void setpVehiculo(String pVehiculo) {
        this.pVehiculo = pVehiculo;
    }
    public String gettVehiculo() {
        return tVehiculo;
    }

    public void settVehiculo(String tVehiculo) {
        this.tVehiculo = tVehiculo;
    }
    public String getyVehiculo() {
        return yVehiculo;
    }

    public void setyVehiculo(String yVehiculo) {
        this.yVehiculo = yVehiculo;
    }
    
   
    
}
