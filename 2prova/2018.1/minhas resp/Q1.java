public class Q1 {
    
    public static void main(String[] args) {
        Svector vetor  = new Svector(1000);
        int threads = 0;
        new Thread(()->{
            int aux = 1;
            for(int i=0;i<vetor.lenV();i++) {
                vetor.set(i, i);
                System.out.println("index= "+i+" valor= "+vetor.get(i));
                try {
                    Thread.sleep(10);
                }catch(InterruptedException e){

                }
            }
        }).start();
        new Thread(()->{
            int aux = 1;
            for(int i=0;i<vetor.lenV();i++) {
                vetor.set(i, 2000-i);
                System.out.println("index= "+i+" valor= "+vetor.get(i));
                try {
                    Thread.sleep(10);
                }catch(InterruptedException e){

                }
            }
        }).start();
    }

    public void func(Svector vetor) {
        
    }
}

class Svector {

    private int[] vector;

    public Svector(int len) {
        this.vector = new int[len];
    }

    public synchronized int lenV() {
        return this.vector.length;
    }

    public int get(int pos) {
        synchronized(this) {
            return this.vector[pos];
        }
    }

    public void swap(int a, int b) {
        synchronized(this) {
            int aux = this.vector[a];
            this.vector[a] = this.vector[b];
            this.vector[b] = aux;
        }
    }

    public void set(int pos, int val) {
        synchronized(this) {
            this.vector[pos] = val;
        }
    }
}