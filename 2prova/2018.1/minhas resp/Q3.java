import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class Q3 {
    public static void main(String[] args) {
        Padaria p = new Padaria();
        p.iniciar();
    }

    public static class Padaria {
        public final BlockingQueue<Paes> forno;

        public Padaria() {
            this.forno = new LinkedBlockingQueue<>();
        }

        public void iniciar() {
            // Produtor
            new Thread(()->{
                while(true) {
                    while(true) {
                        synchronized(this.forno) {
                            if(this.forno.isEmpty()) {
                                break;
                            }
                            try {
                                this.forno.wait();
                            }catch(InterruptedException e){}
                        }
                    }

                    System.out.println("forno vazio");

                    for(int i=0; i<5; i++) {
                        try {
                            Thread.sleep(500);
                            this.forno.put(new Paes());
                            synchronized (this.forno) {
                                this.forno.notify();
                            }

                            System.out.printf("%d / 50 pães no forno%n", (i + 1) * 10);
                        } catch (InterruptedException ignored) {
                        }
                    }
                }
            }).start();

            // Consumidor
            new Thread(()->{
                while(true) {
                    while(true) {
                        synchronized(this.forno) {
                            if(!this.forno.isEmpty()) {
                                break;
                            }
                            try {
                                this.forno.wait();
                            }catch(InterruptedException e){}
                        }
                    }

                    System.out.println("forno com paes");
                    try {
                        Thread.sleep(2000);
                        this.forno.take();
                        synchronized (this.forno) {
                            this.forno.notify();
                        }
                        System.err.println("10 pães prontos");
                    } catch (InterruptedException e) {
                    }
                }
            }).start();
        }

    }
    
    public static class Paes {
    
    }

}

