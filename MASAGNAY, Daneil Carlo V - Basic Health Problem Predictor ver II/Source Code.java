package CPE19_Microprocessor_MidTermsProject; // Declare package name

import java.util.Scanner; // Import Scanner for user input

public class MidTermsProject // Main class
{
	public static void main(String[]args) // Entry point
	{
		Project p = new Project(); // Create instance of Project class
		
		Scanner input = new Scanner(System.in); // Create Scanner object for input
		
		int choice; // Variable to store user's choice
		System.out.print("Welcome to my Project: \n\n" + 
					 "Here are the set of my programs that i will convert to assembly \n\n" + 
					 "1. Grade Converter [Selection Statement]\n" +
					 "2. Spaceship using nested loop [Loop/Nested Loop]\n" +
					 "3  Letter Counter [Array and Loop/Nested Loop]\n" +
					 "4. Odd and Even Numbers Counter[Selection, Array, and Loop/Nested Loop]\n" +
					 "5. Prime Number Detector [Selection Statement, and Loop]\n\n" +
					 "What program do you want to choose? " 
					 );
		choice = input.nextInt(); // Read user's choice
		
		if (choice == 1)
		{
			p.one(); // Call method one (Grade Converter)
		}
		if (choice == 2)
		{
			p.two(); // Call method two (Spaceship)
		}
		if (choice == 3)
		{
			p.three(); // Call method three (Letter Counter)
		}
		if (choice == 4)
		{
			p.four(); // Call method four (Odd/Even Counter)
		}
		if (choice == 5)
		{
			p.five(); // Call method five (Prime Number Detector)
		}
	}
}

class Project // Class containing all program methods
{
	void one() // Grade converter using selection statement
	{	
		Scanner input = new Scanner(System.in); // Create scanner object
		
		System.out.println(); // Blank line
		
		System.out.print("Enter your grade (0-100): "); // Prompt user
		int grade = input.nextInt(); // Read grade

		if (grade >= 96)
		   System.out.println("Grade: 1.00");
		else if (grade >= 94)
		   System.out.println("Grade: 1.25");
		else if (grade >= 91)
		   System.out.println("Grade: 1.50");
		else if (grade >= 89)
		   System.out.println("Grade: 1.75");
		else if (grade >= 86)
		   System.out.println("Grade: 2.00");
		else if (grade >= 83)
			System.out.println("Grade: 2.25");
		else if (grade >= 80)
		   System.out.println("Grade: 2.50");
		else if (grade >= 77)
			System.out.println("Grade: 2.75");
		else if (grade >= 75)
			System.out.println("Grade: 3.00");
		else if (grade >= 70)
		   System.out.println("Grade: 4.00");
		else
		   System.out.println("Grade: 5.00");
	}
	
	void two() // Spaceship using nested loops
	{
		 // Cone (Top)
        for (int i = 0; i < 6; i++) { // Outer loop for rows
            for (int space = 7 - i; space > 1; space--) // Inner loop for spaces
            {
                System.out.print(" "); // Print space
            }
            for (int star = 0; star <= i * 2; star++) // Inner loop for stars
            {
                System.out.print("*"); // Print star
            }
            System.out.println(); // Newline after each row
        }

        // Body
        for (int i = 0; i < 6; i++) // Loop for body rows
        {
            System.out.print("|"); // Print left boundary
            for (int j = 0; j < 6 * 2 - 1; j++) // Loop for = signs
            {
                System.out.print("="); // Print =
            }
            System.out.println("|"); // Print right boundary and newline
        }

        // Flames
        for (int i = 0; i < 5; i++) // Loop for flame lines
        {
            for (int space = 0; space < 3; space++) // Print leading spaces
            {
                System.out.print(" ");
            }
            System.out.println("^ ^ ^ ^"); // Print flame
        }
	}
	
	
	
	
	
	
	
	
	
	void three() // Letter counter using array
	{
		 // Initialize character array (sentence)
		 char sentence[] = {'I', ' ', 'l', 'o', 'v', 'e', ' ', 'y', 'o', 'u', ' ', 
                 'N', 'a', 'i', 'z', 'a', 'h', ' ', 'J', 'a', 's', 'm', 'i', 'n', 'e', 
                 ' ', 'C', 'a', 't', 'a', 'm', 'i', 'o', ' ', 'R', 'e', 's', 'u', 's'};

	     char target = 'N'; // Letter to count
	     int count = 0; // Counter

	     for (int i = 0; i < sentence.length; i++) {
	         if (sentence[i] == target) { // Check if char matches target
	             count++; // Increment counter
	         }
	     }

	     System.out.println("The letter '" + target + "' appears " + count + " time(s).");
	}
	
	
	
	
	
	
	
	
	void four() // Even and odd number counter
	{
		 // Array of mixed numbers
         int mixedArray[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        
         int evenCount = 0; // Counter for even numbers
         int oddCount = 0;  // Counter for odd numbers

         for (int i = 0; i < mixedArray.length; i++) // Loop through array
         {
             if (mixedArray[i] % 2 == 0) // Check if even
             {
                evenCount++; // Increment even counter
             } else {
                oddCount++;  // Increment odd counter
             }
         }

         System.out.print("Even Numbers Count: " + evenCount); // Print even count
         System.out.println();
         System.out.print("Odd Numbers Count: " + oddCount);  // Print odd count
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	void five() // Prime number detector
	{
		boolean isPrime = true; // Assume number is prime

		int number = 7; // Number to test

		if (number <= 1) // Numbers <= 1 are not prime
		{
			isPrime = false;
		}
		else
		{
			for (int i = 2; i < number; i++) // Loop from 2 to number - 1
			{
				if (number % i == 0) // If divisible
				{
					isPrime = false; // Not prime
					break; // Exit loop early
				}
			}
		}

		if (isPrime) // Print result
		{
			System.out.println(number + " is a prime number.");
		} 
		else 
		{
			System.out.println(number + " is not a prime number.");
		}
	}
}
