import java.util.*;
//Author: Rico H Adrian
//Date : 29 September 2016
//Subject : Lab 1 CS311 problem 1, converting base number to decimal number

public class BaseToDecimal {
   
   public static void main(String[]args) {
      
      //variable declaration
      int base;
      int result=0;
      int baseNumber;
      int power=0;
      
      //prompt user input
      Scanner keyboard=new Scanner(System.in); 
      System.out.println("Please enter a base from 2-9 : ");
      base=keyboard.nextInt();
      
      //re-ask user to re-enter the valid base
      //if the user does not enter a number between 2 to 9
      while(base >9 || base<2) {
         System.out.println("Incorrect base system. Please enter a base from 2-9:");
         base=keyboard.nextInt();
      }
      
      //ask user to input the base number
      System.out.println(" Enter a base " + base+ " number: ");  
      baseNumber=keyboard.nextInt();
      String baseNum= Integer.toString(baseNumber);
      
      //The calculation of the conversion into base 10
      for (int i=baseNum.length()-1;i>=0;i--) {
         int number= baseNumber%10;
         result =result+(number*(int)Math.pow(base,power));
         baseNumber=baseNumber/10;
         power++;
      }
      
      //Print out the result
      System.out.println("The equivalent number in base 10 format is: " + result);
     
   
   
   
   }
   
}