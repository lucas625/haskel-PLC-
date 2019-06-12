public class Q2 {
    public static void main(String[] args) {
        Bqueue q = new Bqueue(10);
        new Thread(()->{
            try {
                System.out.println(q.pop());
                System.out.println(q.pop());
                System.out.println(q.pop());
            }
            catch(InterruptedException e){
                System.out.println("não pode parar");
            }
        }).start();
        new Thread(()->{
            try {
                Thread.sleep(1000);
            }catch(InterruptedException e){
                
            }
            try {
                q.push(20);
                q.push(10);
                q.push(30);
                q.push(30);
                q.push(30);
            }
            catch(InterruptedException e){
                System.out.println("não pode parar");
            }
        }).start();
    }
}

class Bqueue {
    private int len;
    private int index;
    private int[] queue;

    public Bqueue(int tam) {
        this.queue = new int[tam];
        this.len = tam;
        this.index = 0;
    }

    public synchronized int pop() throws InterruptedException {
        while(this.index==0){
            System.out.println("empty Bqueue");
            wait();
        }
        int aux = this.queue[0];
        for(int i=0;i<index-1;i++) {
            int a1 = this.queue[i];
            this.queue[i] = this.queue[i+1];
            this.queue[i+1] = a1;
        }
        this.index--;
        notifyAll();
        return aux;
        
    }

    public synchronized void push(int val) throws InterruptedException {
        while(this.index>=this.len) {
            System.out.println("full Bqueue");
            wait();
        }
        this.queue[this.index] = val;
        this.index++;
        notifyAll();
        
    }

    public synchronized int getIndex() {
        return this.index;
    }
    
    public synchronized int getLen() {
        return this.len;
    }


}