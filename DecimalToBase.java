import java.io.*;
import java.util.*;
//Author: Rico H Adrian
//Date : 29 September 2016
//Subject : Lab 1 CS311 problem 2, converting decimal number to base number

public class DecimalToBase {
   
   public static void main(String[]args) {
      
      //variable declaration
      int DecimalNumber;
      
      //prompt user input
      Scanner keyboard=new Scanner(System.in); 
      
      //ask user to input the decimal/base 10 number
      System.out.println(" Enter a base 10 number: ");  
      DecimalNumber=keyboard.nextInt();
      String baseNum= Integer.toString(DecimalNumber);
      
      //Print out the result
      System.out.print("The equivalent number in base 2 format is: ");

      //The calculation of the conversion into base 2
      StringBuilder remBuilder = new StringBuilder();
      while (DecimalNumber != 0) {
         int remainder = DecimalNumber%2;
         DecimalNumber = DecimalNumber/2;
         String rem=Integer.toString(remainder);
         remBuilder.append(rem);
      }          
      
      //Reverse the result  
      System.out.print(remBuilder.reverse());
     
   
   
   }
   
   
}