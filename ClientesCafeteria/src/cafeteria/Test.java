/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cafeteria;

import java.util.Scanner;

public class Test {
  public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

 
        System.out.print("Ingrese el nombre del cliente: ");
        String nombre = scanner.nextLine();

        System.out.print("Ingrese el DNI del cliente: ");
        String dni = scanner.nextLine();

        System.out.print("Ingrese el teléfono del cliente: ");
        String telefono = scanner.nextLine();

        System.out.print("Ingrese el email del cliente: ");
        String email = scanner.nextLine();

        
        Clientes cliente = new Clientes(nombre, dni, telefono, email);

        // Mostrar los datos del cliente
        System.out.println(cliente);

        // Cerrar el scanner
        scanner.close();
  }
  }