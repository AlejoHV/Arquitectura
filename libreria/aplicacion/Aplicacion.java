package aplicacion;

import libsjf.JavaSjf;

public class Aplicacion {
    public static void main(String[] args) {
        JavaSjf algoritmo = new JavaSjf();
        int[] ids = {1, 2, 3};
        int[] arrivals = {0, 1, 2};
        int[] bursts = {5, 3, 1};
        int[] orden = algoritmo.scheduleSJF(ids, arrivals, bursts);
        for (int id : orden) {
            System.out.println("ID: " + id);
        }
    }

    static {
      System.loadLibrary("sjf");
    }

}
