
package poo;

import java.util.ArrayList;

public class Felino extends Mascota {
    private boolean tieneParasitos;
    private ArrayList<Object> felinos;

    public Felino(boolean tieneParasitos, String nombre, String raza, String color, int edad) {
        super(nombre, raza, color, edad);
        this.tieneParasitos = tieneParasitos;
    } 

    public boolean getTieneParasitos() {
        return tieneParasitos;
    }

    public void setTieneParasitos(boolean tieneParasitos) {
        this.tieneParasitos = tieneParasitos;
    }

    @Override
    public void canT() {
    }    

    @Override
    public void agreMa(Object o) {
        
    }
    
 
    
}
