package academy.devdojo.maratonajava.javacore.ZZFthreads.test;

import academy.devdojo.maratonajava.javacore.ZZFthreads.dominio.Account;

// implementaca da interface para utilizacao do metodo run()
public class ThreadAccountTest01 implements Runnable {
    private Account account = new Account();

    public static void main(String[] args) {
        ThreadAccountTest01 threadAccountTest01 = new ThreadAccountTest01();
        Thread t1 = new Thread(threadAccountTest01, "Hestia");
        Thread t2 = new Thread(threadAccountTest01, "Bell Cranel");
//        dando prioridade para forcar as 2 threads acessarem o saque concorrentemente
        t1.setPriority(Thread.MAX_PRIORITY);
        t1.start();
        t2.start();
    }

    // sobrescrita para sacar de 10 em 10 no loop
    @Override
    public void run() {
        for (int i = 0; i < 5; i++) {
            withdrawal(10);
            // mensagem em caso de saldo zerado
            if (account.getBalance() < 0) {
                System.out.println("FODEO");
            }
        }
    }

//    perceba que apesar de mesmo nome, este metodo apenas tem o if else para liberar o saque
    private void withdrawal(int amount) {
        if (account.getBalance() >= amount) {
            System.out.println(getThreadName() + " está indo sacar dinheiro.");
            account.withdrawal(amount);
            System.out.println(getThreadName() + " completou o saque. Valor atual da conta: " + account.getBalance());
        } else {
            System.out.println("Sem dinheiro para "+ getThreadName() +" efetuar o saque "+account.getBalance());
        }
    }

    private static String getThreadName() {
        return Thread.currentThread().getName();
    }
}
