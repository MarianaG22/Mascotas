
package poo;

import java.util.ArrayList;

public class Canino extends Mascota {
   private int nivelEntrenamiento;
   private ArrayList<Object> caninos;

    public Canino(int nivelEntrenamiento, String nombre, String raza, String color, int edad) {
        super(nombre, raza, color, edad);
        this.nivelEntrenamiento = nivelEntrenamiento;
    } 
    
    public ArrayList<Object> getCaninos() {
        return caninos;
    }
    
    public void setCaninos(ArrayList<Object> caninos) {
        this.caninos = caninos;
    }

    public int getNivelEntrenamiento() {
        return nivelEntrenamiento;
    }

    public void setNivelEntrenamiento(int nivelEntrenamiento) {
        this.nivelEntrenamiento = nivelEntrenamiento;
    }

    @Override
    public void canT() {
        
    }

    @Override
    public void agreMa(Object o) {
         caninos.add(o);
    }
    
    
}
