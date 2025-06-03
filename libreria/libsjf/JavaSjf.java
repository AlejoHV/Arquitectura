package libsjf;

public class JavaSjf {
    static{
       System.loadLibrary("sjf");
    }

    public native int[] scheduleSJF(int[] ids, int[] arrivals, int[] bursts);
}
