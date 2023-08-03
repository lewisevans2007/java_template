import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter the first number: ");
        int x = scanner.nextInt();

        System.out.println("Enter the second number: ");
        int y = scanner.nextInt();

        int result = Add.add(x, y);
        System.out.println("The sum of " + x + " and " + y + " is " + result + ".");

        scanner.close();
    }
}
