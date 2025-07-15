#include <iostream>
#include <cmath>

using namespace std;

int activity;

//function declarations
void activity1(); 
void activity2();
void activity3();
void activity4();
void activity5();
void activity6();
void activity7();
void activity8();
void activity9();
void activity10();

//the main function, introduction and calls the function that you want to open
int main()
{
	
	cout<<"_____________________________________________________________________\n\n";
	cout<<"    Welcome! this program is the compilation of activity 1 to 10 \n";
	cout<<"_____________________________________________________________________\n\n";
	cout<<"         Activity 1  : Introduction to C++ part I \n";
	cout<<"         Activity 2  : Introduction to C++ part II\n";
	cout<<"         Activity 3  : Control Statements \n";
	cout<<"         Activity 4  : Pointers, Reference, and Dynamic Memory  \n";
	cout<<"                       Allocation \n";
	cout<<"         Activity 5  : Multi-dimensional Array \n";
	cout<<"         Activity 6  : Search Alogrithm \n";
	cout<<"         Activity 7  : Sorting Algorithms \n";
	cout<<"         Activity 8  : Insert, Delete, and Copy \n";
	cout<<"         Activity 9  : Queue and Stack \n";
	cout<<"         Activity 10 : Algorithm Development \n";
	cout<<"_____________________________________________________________________\n\n";
	cout<<"Input the number 0 if you want to exit.\n";
	cout<<"Input the number of the activity do you want to open [1 - 10]: ";
	cin>>activity;	
	
	switch (activity)
	{
		case 0:
			cout<<"\n_____________________________________________________________________\n\n";
			cout<<"               Thank You for Using the Program! Goodbye!\n";
			cout<<"\n_____________________________________________________________________";
			exit(0);
			break;
		case 1: 
			activity1();
			main();
			break;
		case 2:
			activity2();
			main();
			break;
		case 3: 
			activity3();
			main();
			break;
		case 4:
			activity4();
			main();
			break;
		case 5: 
			activity5();
			main();
			break;
		case 6:
			activity6();
			main();
			break;
		case 7:
			activity7();
			main();
			break;
		case 8:
			activity8();
			main();
			break;
		case 9: 
		activity9();
			main();
			break;
		case 10: 
		activity10();
			main();
			break;
		default:
			cout<<"Invalid Input. Please enter a valid number.";
			main();
			break;
	}
	
	return 0;
}

void activity1() // this function allows you to find out the sum, difference, product, and quotient of two integers
{	
	int val1, val2, sum, dif, pro, quo;
	
	cout<<"\n_____________________________________________________________________\n\n";
	cout<<"Welcome! this program allows user to find out the sum, \ndifference, product, and quotient of two integers.\n\n";
		
	//inputs
	cout<<"Enter first integer value: ";
	cin>>val1;
		
	cout<<"Enter second integer value: ";
	cin>>val2;
	cout<<"\n";
	//process
	sum=val1+val2;
	dif=val1-val2;
	pro=val1*val2;
	quo=val1/val2;
		
	//output
	cout<<"The sum of the 2 inputs is "<<sum<<endl;
	cout<<"The difference of the 2 inputs is "<<dif<<endl;
	cout<<"The product of the 2 inputs is "<<pro<<endl;
	cout<<"The quotient of the 2 inputs is "<<quo<<endl;
}

void activity2() // output the multiplication table using a string variable
{
	string contents;

	contents =
		"_____________________________________________________________________________________\n"
		"|     |  16  |  17   |  18   |  19   |  20   |  21   |  22   |  23   |  24   |  25   |\n"
		"_____________________________________________________________________________________\n"
		"| 16  | 256  |  272  |  289  |  304  |  320  |  336  |  352  |  368  |  384  |  400  |\n"
		"_____________________________________________________________________________________\n"
		"| 17  | 272  |  289  |  306  |  323  |  340  |  357  |  374  |  391  |  408  |  425  |\n"
		"_____________________________________________________________________________________\n"
		"| 18  | 288  |  306  |  324  |  342  |  360  |  378  |  396  |  414  |  432  |  450  |\n"
		"_____________________________________________________________________________________\n"
		"| 19  | 304  |  323  |  342  |  361  |  380  |  399  |  418  |  437  |  456  |  475  |\n"
		"_____________________________________________________________________________________\n"
		"| 20  | 320  |  340  |  360  |  380  |  400  |  420  |  440  |  460  |  380  |  500  |\n"
		"_____________________________________________________________________________________\n"
		"| 21  | 336  |  357  |  378  |  399  |  420  |  441  |  462  |  483  |  504  |  525  |\n"
		"_____________________________________________________________________________________\n"
		"| 22  | 352  |  374  |  396  |  418  |  340  |  462  |  484  |  506  |  528  |  550  |\n"
		"_____________________________________________________________________________________\n"
		"| 23  | 368  |  391  |  414  |  437  |  460  |  483  |  506  |  529  |  552  |  575  |\n"
		"_____________________________________________________________________________________\n"
		"| 24  | 384  |  408  |  432  |  456  |  480  |  503  |  528  |  552  |  576  |  600  |\n"
		"_____________________________________________________________________________________\n"
		"| 25  | 400  |  425  |  450  |  475  |  500  |  525  |  550  |  575  |  600  |  625  |\n"
		"_____________________________________________________________________________________\n";

	//output
	cout<<"\n_____________________________________________________________________\n\n";
	cout<<"This is the cross multiplication table of number 16 to 25 \n";
	
	cout<<contents;
}

void activity3() // denomination of the inpuuted monetary value in Pesos
{
double val; 
	int P1000, P500, P200, P100, P50, P20, P10, P5, P1, c25, cents;
	
	cout<<"\n_____________________________________________________________________\n\n";
	cout<<"Welcome! this program allows user to determine the denomination of inputted monetary value.\n\n";
	
	//inputs
	cout<<"Enter the value in Peso: P";
	cin>>val;
	
	//process
	if (val > 0)
	{
		cents = (val*100);
	
		P1000 = cents / 100000;
    	cents %= 100000;

    	P500 = cents / 50000;
    	cents %= 50000;

    	P200 = cents / 20000;
	   	cents %= 20000;

    	P100 = cents / 10000;
    	cents %= 10000;

   		P50 = cents / 5000;
    	cents %= 5000;

    	P20= cents / 2000;
    	cents %= 2000;

    	P10 = cents / 1000;
    	cents %= 1000;

    	P5 = cents / 500;
    	cents %= 500;
    
    	P1 = cents / 100;
    	cents %= 100;

    	c25 = cents / 25;
    	cents %= 25;
    
    	//output
    	cout << "Denominations:" << endl;
    	cout << "1000s: " << P1000 << endl;
    	cout << "500s: " << P500 << endl;
    	cout << "200s: " << P200 << endl;
    	cout << "100s: " << P100 << endl;
    	cout << "50s: " << P50 << endl;
    	cout << "20s: " << P20 << endl;
    	cout << "10s: " << P10 << endl;
    	cout << "5s: " << P5 << endl;
    	cout << "1s: " << P1 << endl;
    	cout << "0.25s: " << c25 << endl;
    }
    else
	{
		cout<<"\nplease input a valid value...";
	}
}

// activity 4 function declaration
double calculateCircleArea(double radius, const double *Pi);
double calculateCircleCircumference(double radius, const double *Pi);
double calculateEllipseArea(double semiMajorAxis, double semiMinorAxis, const double *Pi);
double calculateEllipseCircumference(double semiMajorAxis, double semiMinorAxis, const double *Pi);

void activity4() // this activity finds out the area and the circumference of a circle or an ellipse
{
    const double Pi = 3.14159;
    double circleRadius, semiMajorAxis, semiMinorAxis;
    int userChoice, restartChoice;
    bool restartProgram = true; 

    while (restartProgram)
    {
        cout<<"\n_____________________________________________________________________\n\n";
        cout << "This program allows you to find out the area and circumference of \na circle or an ellipse." << endl << endl;
        cout << "What do you want to compute? [1 : Circle | 2 : Ellipse]: ";
        cin >> userChoice;

        switch (userChoice)
        {
            case 1:
                cout << "Input a value for the radius of the circle: ";
                cin >> circleRadius;
                cout << endl;
                cout << "The area of the circle is " << calculateCircleArea(circleRadius, &Pi) << endl;
                cout << "The circumference of the circle is " << calculateCircleCircumference(circleRadius, &Pi) << endl;
                break;

            case 2:
                cout << "Input a value for 'a' (semi-major axis radius): ";
                cin >> semiMajorAxis;
                semiMinorAxis = 2 * semiMajorAxis;
                cout << endl;
                cout << "The area of the ellipse is " << calculateEllipseArea(semiMajorAxis, semiMinorAxis, &Pi) << endl;
                cout << "The circumference of the ellipse is " << calculateEllipseCircumference(semiMajorAxis, semiMinorAxis, &Pi) << endl;
                break;

            default:
                cout << "Invalid choice, please input the appropriate number" << endl;
                break;
        }

        cout << "\nDo you want to restart? [1 : Yes | 2 : No]: ";
        cin >> restartChoice;

        if (restartChoice == 1)
        {
            restartProgram = true; 
        }
        else if (restartChoice == 2)
        {
            restartProgram = false; 
            cout << "Thank you for using the program, Goodbye!" << endl;
        }
        else
        {
            cout << "Invalid input. Exiting program." << endl;
            restartProgram = false; 
        }
    }
}

double calculateCircleArea(double radius, const double *Pi) // calculate the area of a circle
{
    return (*Pi) * radius * radius;
}

double calculateCircleCircumference(double radius, const double *Pi) // calculate the circumferencfe of a circle
{
    return 2 * (*Pi) * radius;
}

double calculateEllipseArea(double semiMajorAxis, double semiMinorAxis, const double *Pi) // calculate the area of an ellipse
{
    return (*Pi) * semiMajorAxis * semiMinorAxis; 
}

double calculateEllipseCircumference(double semiMajorAxis, double semiMinorAxis, const double *Pi) // calculate the circumferencfe of an ellipse
{
    return (*Pi) * (3 * (semiMajorAxis + semiMinorAxis) - sqrt((3 * semiMajorAxis + semiMinorAxis) * (semiMajorAxis + 3 * semiMinorAxis)));
}

int arrayAct5[1000][1000];  
int rowAct5, colAct5;        
// function declaration for activity 5  
int inputAct5(int rowAct5, int colAct5);  
int outputAct5(int rowAct5, int colAct5);

void activity5() // this activity allows you to create an array and find out the location of the largest number of in the array
{	
	cout<<"\n_____________________________________________________________________\n\n";
	cout<<"Welcome! This program is used to create an array and find the largest \nnumber and find out its location."<<endl;
    cout << "\nInput the number of rows: ";
    cin >> rowAct5;

    cout << "Input the number of columns: ";
    cin >> colAct5;
    cout<<endl;

    inputAct5(rowAct5, colAct5); 
    outputAct5(rowAct5, colAct5);
}

int inputAct5(int rowAct5, int colAct5) // function call for input of values of an array
{
    for (int index1 = 0; index1 < rowAct5; index1++)
    {
        for (int index2 = 0; index2 < colAct5; index2++)
        {
            cout << "Input a value for index[" << index1 << "][" << index2 << "]: ";
            cin >> arrayAct5[index1][index2];
        }
    }
    
    cout<<endl;
}

//process the finding of largest number and its location
//output, display the 2-d array, the value of the largest number and its location
int outputAct5(int rowAct5, int colAct5) //
{
    int largest = arrayAct5[0][0];  
    int largestRow = 0, largestCol = 0;  
    
    cout << "Array elements:" << endl;
    for (int row = 0; row < rowAct5; row++) 
	{
        for (int col = 0; col < colAct5; col++) 
		{
            cout << arrayAct5[row][col] << "\t";  
        }
        cout << endl;  
    }
    cout << endl;
    
    for (int row = 0; row < rowAct5; row++) 
	{
        for (int col = 0; col < colAct5; col++) 
		{
            if (arrayAct5[row][col] > largest) 
			{
                largest = arrayAct5[row][col];  
                largestRow = row;      
                largestCol = col;     
            }
        }
    }

    cout << "The largest number is: " << largest << endl;
    cout << "It is located at index: [" << largestRow << "][" << largestCol << "]" << endl;
}

void activity6() // this activity allows the user to search a number within the array and find out its location
{
	int searchNumber, middleRow = 4, middleColumn = 4, totalColumns;
	int array[4][4] =	
	{
		100, 101, 102, 103,
		104, 105, 106, 107,	
		108, 109, 110, 111,
		112, 113, 114, 115	
	};
		
	// Display of numbers
	cout<<"\n_____________________________________________________________________\n\n";
	cout << "Numbers: " << endl;
	for(int rowIndex = 0; rowIndex < 4; rowIndex++)
	{
		for(int colIndex = 0; colIndex < 4; colIndex++)
		{
			cout << array[rowIndex][colIndex] << "\t";
		}
		cout << endl;
	}
		
	// Finding the middle index of rows and columns
	middleRow = ((middleRow - 1) / 2);
	middleColumn = ((middleColumn - 1) / 2);
		
	// Asking for input number to search
	cout << "\nInput a Number to search: ";
	cin >> searchNumber;
	
	// Flag to indicate if the number is found
	bool isFound = false;

	// If the middle array element is the number that is being asked
	if(searchNumber == array[middleRow][middleColumn])
	{
		cout << "The number: " << array[middleRow][middleColumn] << " is found at index: [" << middleRow << "][" << middleColumn << "]";
		isFound = true;
	}
	else
	{
		// If the number is greater than the middle array element
		if(array[middleRow][middleColumn] < searchNumber)
		{
			for(int rowIndex = middleRow; rowIndex < 4; rowIndex++)
			{
				for(int colIndex = middleColumn; colIndex < 4; colIndex++)
				{
					if(searchNumber == array[rowIndex][colIndex])
					{
						cout << "The number: " << array[rowIndex][colIndex] << " is found at index: [" << rowIndex << "][" << colIndex << "]";
						isFound = true;
						break;
					}
				}
				if(isFound) break;
			}
		}
	
		// If the number is less than the middle array element
		else if(array[middleRow][middleColumn] > searchNumber)
		{
			for(int rowIndex = middleRow; rowIndex >= 0; rowIndex--)
			{
				for(int colIndex = middleColumn; colIndex >= 0; colIndex--)
				{
					if(searchNumber == array[rowIndex][colIndex])
					{
						cout << "The number: " << array[rowIndex][colIndex] << " is found at index: [" << rowIndex << "][" << colIndex << "]";
						isFound = true;
						break;
					}
				}
				if(isFound) break;
			}
		}
	}
	
	// If the number is not found
	if(!isFound)
	{
		cout << "Element not found";
	}

	cout<<endl;
	
}

int numberOfElementsAct7, inputArray[1000];

// Function declarations for sorting algorithms of activity 7
void SelectionSort(int inputArray[], int numElements);
void BubbleSort(int inputArray[], int numElements);
void InsertionSort(int inputArray[], int numElements);

void activity7() // this activity allows the user to sort an array using selection, bubble, and insertion sort
{
	cout << "\n_____________________________________________________________________\n\n";
	cout << "\tWELCOME! THIS PROGRAM ALLOWS YOU TO SORT ARRAY ELEMENTS \n";
	cout << "_____________________________________________________________________\n";

	cout << "How many array elements: ";
	cin >> numberOfElementsAct7;
	cout<<endl;

	for(int elementIndex = 0; elementIndex < numberOfElementsAct7; elementIndex++)
	{
		cout << "Array[" << elementIndex << "]: ";
		cin >> inputArray[elementIndex];
	}

	cout << "\nThe Array elements are:\n";
	cout << "_____________________________________________________________________\n";
	for(int elementIndex = 0; elementIndex < numberOfElementsAct7; elementIndex++)
	{
		cout << inputArray[elementIndex] << " ";	
	}
	cout << "\n_____________________________________________________________________\n";

	SelectionSort(inputArray, numberOfElementsAct7);
	BubbleSort(inputArray, numberOfElementsAct7);
	InsertionSort(inputArray, numberOfElementsAct7);
}

// Selection Sort function
void SelectionSort(int inputArray[], int numElements) 
{
	int swapFlag, smallestValue, tempValue, outerIndex, innerIndex, smallestIndex;

	for(outerIndex = 0; outerIndex < (numElements - 1); outerIndex++)
	{
		swapFlag = 0;
		smallestValue = inputArray[outerIndex];

		for(innerIndex = outerIndex + 1; innerIndex < numElements; innerIndex++)
		{
			if(smallestValue > inputArray[innerIndex])
			{
				smallestValue = inputArray[innerIndex];
				swapFlag++;
				smallestIndex = innerIndex;
			}
		}

		if(swapFlag != 0)
		{
			tempValue = inputArray[outerIndex];
			inputArray[outerIndex] = smallestValue;
			inputArray[smallestIndex] = tempValue;
		}
	}

	cout << "\nSorted Array using Selection Sort is: \n";
	cout << "_____________________________________________________________________\n";
	for(outerIndex = 0; outerIndex < numElements; outerIndex++)
	{
		cout << inputArray[outerIndex] << " ";
	}
	cout << "\n_____________________________________________________________________\n";
	cout << endl;
}

// Bubble Sort function
void BubbleSort(int inputArray[], int numElements)
{
	int outerIndex, innerIndex, tempValue;

	for(outerIndex = 0; outerIndex < (numElements - 1); outerIndex++)
	{
		for(innerIndex = 0; innerIndex < (numElements - outerIndex - 1); innerIndex++)
		{
			if(inputArray[innerIndex] > inputArray[innerIndex + 1])
			{
				tempValue = inputArray[innerIndex];
				inputArray[innerIndex] = inputArray[innerIndex + 1];
				inputArray[innerIndex + 1] = tempValue;
			}
		}
	}

	cout << "Sorted Array using Bubble Sort is:\n";
	cout << "_____________________________________________________________________\n";
	for(outerIndex = 0; outerIndex < numElements; outerIndex++)
	{
		cout << inputArray[outerIndex] << " ";
	}
	cout << "\n_____________________________________________________________________\n";
	cout << endl;
}

// Insertion Sort function
void InsertionSort(int inputArray[], int numElements)
{
	int outerIndex, innerIndex, shiftIndex, currentElement, insertIndex;

	for(outerIndex = 1; outerIndex < numElements; outerIndex++)
	{
		currentElement = inputArray[outerIndex];

		if(currentElement < inputArray[outerIndex - 1])
		{
			for(innerIndex = 0; innerIndex <= outerIndex; innerIndex++)
			{
				if(currentElement < inputArray[innerIndex])
				{
					insertIndex = innerIndex;
					for(shiftIndex = outerIndex; shiftIndex > innerIndex; shiftIndex--)
					{
						inputArray[shiftIndex] = inputArray[shiftIndex - 1];
					}
					break;
				}
			}
			inputArray[insertIndex] = currentElement;
		}
	}

	cout << "Sorted Array using Insertion Sort is:\n";
	cout << "_____________________________________________________________________\n";
	for(outerIndex = 0; outerIndex < numElements; outerIndex++)
	{
		cout << inputArray[outerIndex] << " ";
	}
	cout << "\n_____________________________________________________________________\n";
	cout << endl;
}

int myArrayAct8[4][3] =
{
    {10, 20, 30},
    {40, 50, 60},
    {70, 80, 90},
    {11, 12, 13}
};

int operationAct8, inputNumAct8, rowIdxAct8, colIdxAct8, inputRowAct8, inputColAct8, tempRowAct8, tempColAct8, newArrayAct8[4][3], shiftRowAct8, shiftColAct8;

// declaration of function for activity 8
void displayArrayAct8();
void getInputAct8();
void processOperationAct8();

void activity8() // this activity allows the user to insert, delete, and copy the array 
{
    displayArrayAct8();
    getInputAct8();
}

void displayArrayAct8() // display of the globally declared array
{
	cout<<"\n_____________________________________________________________________\n\n";
    cout << "Array Elements:\n";
    for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
    {
        for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
        {
            cout << myArrayAct8[rowIdxAct8][colIdxAct8] << "\t";
        }
        cout << endl;
    }
    cout << endl;
}

void getInputAct8() // ask the user the operation that the user wants to do
{
    cout << "Operation:\n";
    cout << "1 - Insert\n";
    cout << "2 - Delete\n";
    cout << "3 - Copy\n";
    cout << "4 - Terminate\n";

    cout << "What do you want to do [input the number]: ";
    cin >> operationAct8;
    processOperationAct8();
}

void processOperationAct8() // process of insert, delete, and copy
{
    switch (operationAct8)
    {
        case 1:
            if (myArrayAct8[3][2] != 0)
            {
                cout << "The array is full\n\n";
            }
            else
            {
                bool stopAct8 = false;

                cout << "What number do you want to input: ";
                cin >> inputNumAct8;
                cout << "What row [0 - 3]: ";
                cin >> inputRowAct8;
                cout << "What column [0 - 2]: ";
                cin >> inputColAct8;
                cout << endl;
                for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
                {
                    for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                    {
                        if (rowIdxAct8 == inputRowAct8 && colIdxAct8 == inputColAct8)
                        {
                            newArrayAct8[rowIdxAct8][colIdxAct8] = inputNumAct8;
                            stopAct8 = true; 
                            break; 
                        }
                        else
                        {
                            newArrayAct8[rowIdxAct8][colIdxAct8] = myArrayAct8[rowIdxAct8][colIdxAct8]; 
                        }
                    }
                    if (stopAct8)
                        break;
                }

                newArrayAct8[inputRowAct8][inputColAct8] = inputNumAct8;

                shiftRowAct8 = inputRowAct8;
                shiftColAct8 = inputColAct8 + 1; 
                if (shiftColAct8 == 3)
                {
                    shiftColAct8 = 0;
                    shiftRowAct8++;
                }

                tempRowAct8 = inputRowAct8;
                tempColAct8 = inputColAct8;

                for (rowIdxAct8 = shiftRowAct8; rowIdxAct8 < 4; rowIdxAct8++)
                {
                    for (colIdxAct8 = shiftColAct8; colIdxAct8 < 3; colIdxAct8++)
                    {
                        newArrayAct8[rowIdxAct8][colIdxAct8] = myArrayAct8[tempRowAct8][tempColAct8];
                        tempColAct8++;
                        if (tempColAct8 == 3)
                        {
                            tempRowAct8++;
                            tempColAct8 = 0;
                        }
                    }
                    shiftColAct8 = 0;
                }

                for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
                {
                    for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                    {
                        myArrayAct8[rowIdxAct8][colIdxAct8] = newArrayAct8[rowIdxAct8][colIdxAct8];
                    }
                }
                cout << "New Array Elements:\n";
                for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
                {
                    for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                    {
                        cout << newArrayAct8[rowIdxAct8][colIdxAct8] << "\t";
                    }
                    cout << endl;
                }
                cout << endl;
            }
            getInputAct8();
            break;

        case 2:
            cout << "What row to be deleted [0 - 3]: ";
            cin >> inputRowAct8;
            cout << "What column to be deleted [0 - 2]: ";
            cin >> inputColAct8;
            cout << endl;

            for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
            {
                for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                {
                    newArrayAct8[rowIdxAct8][colIdxAct8] = myArrayAct8[rowIdxAct8][colIdxAct8];
                }
            }

            newArrayAct8[inputRowAct8][inputColAct8] = 0;

            tempRowAct8 = inputRowAct8, tempColAct8 = inputColAct8 + 1;
            if (tempColAct8 == 3)
            {
                tempRowAct8++;
                tempColAct8 = 0;
            }

            for (rowIdxAct8 = inputRowAct8; rowIdxAct8 < 4; rowIdxAct8++)
            {
                for (colIdxAct8 = inputColAct8; colIdxAct8 < 3; colIdxAct8++)
                {
                    newArrayAct8[rowIdxAct8][colIdxAct8] = newArrayAct8[tempRowAct8][tempColAct8];
                    tempColAct8++;
                    if (tempColAct8 == 3)
                    {
                        tempRowAct8++;
                        tempColAct8 = 0;
                    }
                }
                inputColAct8 = 0;
            }

            for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
            {
                for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                {
                    myArrayAct8[rowIdxAct8][colIdxAct8] = newArrayAct8[rowIdxAct8][colIdxAct8];
                }
            }

            cout << "New Array Elements:\n";
            for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
            {
                for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                {
                    cout << newArrayAct8[rowIdxAct8][colIdxAct8] << "\t";
                }
                cout << endl;
            }
            cout << endl;
            getInputAct8();
            break;

        case 3:
            cout << endl;
            cout << "The array has been copied.\n";
            for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
            {
                for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                {
                    newArrayAct8[rowIdxAct8][colIdxAct8] = myArrayAct8[rowIdxAct8][colIdxAct8];
                }
            }

            cout << "New Array Elements:\n";
            for (rowIdxAct8 = 0; rowIdxAct8 < 4; rowIdxAct8++)
            {
                for (colIdxAct8 = 0; colIdxAct8 < 3; colIdxAct8++)
                {
                    cout << newArrayAct8[rowIdxAct8][colIdxAct8] << "\t";
                }
                cout << endl;
            }
            cout << endl;
            getInputAct8();
            break;

        case 4:
            cout << "Program Terminated.\n";
            main();
            break;

        default:
            cout << "Invalid Input.";
            getInputAct8();
            break;
   }
}


// Function declarations for activity9
void inputAct9();
void processAct9();

int arrayAct9[4][4], newArrayAct9[4][4], iRowAct9, iColAct9, actionAct9, numAct9, tempRAct9, tempCAct9;
bool isEmptyAct9;

void activity9() // this activity allows the user to input a 4x4 bidimensional array and operate in it using push, pop, enqueue, and dequeue 
{
    inputAct9();
    processAct9();
}

void inputAct9() // Input elements of a 4x4 array
{
	cout<<"\n_____________________________________________________________________\n\n";
    cout << "Welcome! This program allows the user to push, \npop, enqueue, and dequeue a bidimensional array. \n\n";
    
    cout << "Input value of a 4x4 bidimensional array: \n";
    for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
    {
        for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
        {
            cout << "index [" << iRowAct9 << "][" << iColAct9 << "]: ";
            cin >> arrayAct9[iRowAct9][iColAct9];
        }
    }
    
    cout << endl;
    cout << "Array: \n";
    for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
    {
        for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
        {
            cout << arrayAct9[iRowAct9][iColAct9] << "\t";
        }
        cout << endl;
    }
    
    cout << endl;
}
// Option for the operation to be used
void processAct9()
{
    cout << "Operation:\n";
    cout << "1 - push\n";
    cout << "2 - pop\n";
    cout << "3 - enqueue\n";
    cout << "4 - dequeue\n";
    cout << "5 - exit\n";
    
    cout << "What do you want to do [input the number]: ";
    cin >> actionAct9;
    
    cout << endl;
    switch (actionAct9)
    {
        
        case 1:
            if (arrayAct9[3][3] != 0) 
            {
                cout << "The array is full. Cannot push a new element.\n\n";
                processAct9();
                break;
            }

            cout << "Input a number: ";
            cin >> numAct9;

            newArrayAct9[0][0] = numAct9;

            tempRAct9 = 0;
            tempCAct9 = 0;

            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++) 
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    if (iRowAct9 == 0 && iColAct9 == 0) continue;

                    newArrayAct9[iRowAct9][iColAct9] = arrayAct9[tempRAct9][tempCAct9];

                    tempCAct9++;
                    if (tempCAct9 == 4) 
                    { 
                        tempRAct9++;
                        tempCAct9 = 0;
                    }
                }
            }

            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++) 
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++) 
                {
                    arrayAct9[iRowAct9][iColAct9] = newArrayAct9[iRowAct9][iColAct9];
                }
            }
            cout << endl;
            cout << "New Array Elements:\n";
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++) 
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++) 
                {
                    cout << newArrayAct9[iRowAct9][iColAct9] << "\t";
                }
                cout << endl;
            }
            cout << endl;
            processAct9();
            break;
        
        case 2:
            isEmptyAct9 = true;
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    if (arrayAct9[iRowAct9][iColAct9] != 0)
                    {
                        isEmptyAct9 = false;
                        break;
                    }
                }
                if (!isEmptyAct9)
                    break;
            }

            if (isEmptyAct9)
            {
                cout << "The array is empty. Cannot pop any elements.\n\n";
                processAct9();
                break;
            }
            
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    newArrayAct9[iRowAct9][iColAct9] = arrayAct9[iRowAct9][iColAct9];
                }
            }

            newArrayAct9[0][0] = 0;

            tempRAct9 = 0;
            tempCAct9 = 1;
            if (tempCAct9 == 4)
            {
                tempRAct9++;
                tempCAct9 = 0;
            }

            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    if (tempRAct9 < 4)
                    {
                        newArrayAct9[iRowAct9][iColAct9] = arrayAct9[tempRAct9][tempCAct9];
                        tempCAct9++;
                        if (tempCAct9 == 4)
                        {
                            tempRAct9++;
                            tempCAct9 = 0;
                        }
                    }
                    else
                    {
                        newArrayAct9[iRowAct9][iColAct9] = 0;
                    }
                }
            }

            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    arrayAct9[iRowAct9][iColAct9] = newArrayAct9[iRowAct9][iColAct9];
                }
            }

            cout << "New Array Elements:\n";
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    cout << newArrayAct9[iRowAct9][iColAct9] << "\t";
                }
                cout << endl;
            }
            cout << endl;
            processAct9();
            break;

        case 3:
            if (arrayAct9[3][3] != 0) 
            {
                cout << "The array is full. Cannot enqueue a new element.\n\n";
                processAct9();
                break;
            }

            cout << "Input a number: ";
            cin >> numAct9;

            newArrayAct9[0][0] = numAct9;

            tempRAct9 = 0;
            tempCAct9 = 0;

            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++) 
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    if (iRowAct9 == 0 && iColAct9 == 0) continue;

                    newArrayAct9[iRowAct9][iColAct9] = arrayAct9[tempRAct9][tempCAct9];

                    tempCAct9++;
                    if (tempCAct9 == 4) 
                    {
                        tempRAct9++;
                        tempCAct9 = 0;
                    }
                }
            }

            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++) 
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++) 
                {
                    arrayAct9[iRowAct9][iColAct9] = newArrayAct9[iRowAct9][iColAct9];
                }
            }
            cout << endl;
            cout << "New Array Elements:\n";
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++) 
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++) 
                {
                    cout << newArrayAct9[iRowAct9][iColAct9] << "\t";
                }
                cout << endl;
            }
            cout << endl;
            processAct9();
            break;

        case 4:
            isEmptyAct9 = true;
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    if (arrayAct9[iRowAct9][iColAct9] != 0)
                    {
                        isEmptyAct9 = false;
                        break;
                    }
                }
                if (!isEmptyAct9)
                    break;
            }

            if (isEmptyAct9)
            {
                cout << "The array is empty. Cannot dequeue any elements.\n\n";
                processAct9();
                break;
            }

            for (iRowAct9 = 3; iRowAct9 >= 0; iRowAct9--)
            {
                for (iColAct9 = 3; iColAct9 >= 0; iColAct9--)
                {
                    if (arrayAct9[iRowAct9][iColAct9] != 0)
                    {
                        arrayAct9[iRowAct9][iColAct9] = 0;
                        iRowAct9 = -1; 
                        break;
                    }
                }
            }

            cout << "New Array Elements:\n";
            for (iRowAct9 = 0; iRowAct9 < 4; iRowAct9++)
            {
                for (iColAct9 = 0; iColAct9 < 4; iColAct9++)
                {
                    cout << arrayAct9[iRowAct9][iColAct9] << "\t";
                }
                cout << endl;
            }
            cout << endl;
            processAct9();
            break;
  
        case 5:
            cout << "Program Terminated.\n";
            main();
            break;
 
        default:
            cout << "Invalid Input.";
            processAct9();
            break;
    }
}

string itemPrice[6] = {"[500 Php] Dragon", "[400 Php] Phoenix", "[300 Php] Vampire", "[250 Php] Pegasus", "[300 Php] Werewolf", "[450 Php] Lernean Hydra"};
string itemCode[6] = {"1 - Dragon", "2 - Phoenix", "3 - Vampire", "4 - Pegasus", "5 - Werewolf", "6 - Lernean Hydra"};
int index1, index2, itemIndex, money, balance, condition, itemNum, moneyInserted, itemCount = 0, change, totalPurchases;
string purchased[1000];

// function declaration for activity 10
void display();
void insertMoney();
void process();
void selectPhase1();
void selectPhase2();
void selectPhase3();
void lastPhase();

void activity10() // this activity is a vending machine that allows the user to buy things from it
{
	display();
	insertMoney();
	process();
	selectPhase1();
	selectPhase2();
	lastPhase();
}

void display() // display the items
{
	
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                   MHYTICAL PLUSHIES VENDING MACHINE                    |\n";
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                                                                        |\n";
	itemIndex = 0;
	for(index1 = 0; index1 < 3; index1++)
	{
		for(index2 = 0; index2 < 2; index2++)
		{
			cout<<"           "<<itemPrice[itemIndex]<<" \t";
			itemIndex++;
		}
		cout<<endl;
	}
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                              Item Code:                                |\n";
	itemIndex = 0;
	for(index1 = 0; index1 < 3; index1++)
	{
		for(index2 = 0; index2 < 2; index2++)
		{
			cout<<"             "<<itemCode[itemIndex]<<" \t";
			itemIndex++;
		}
		cout<<endl;
	}
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                                                                        |\n";
}

void insertMoney() // allows the user to insert money
{
	cout<<"                           Insert Money: ";
	cin>>money;
	balance += money;
	moneyInserted += money;
	
	cout<<"                           Balance : "<<balance<<endl<<endl;
	cout<<"         Would you like to insert more? [ 1 - yes | 2 - no ]: ";
	cin>>condition;
	if(condition == 1)
	{
		insertMoney();
		cout<<endl;
	}
}

void process() // if the money is not enough it will push the user back to inserting a money
{
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                                                                        |\n";
	if(balance < 250)
	{
		cout<<"                          Not Enough Funds...\n";
		cout<<"         What would you like to do? [ 1 - Continue | 2 - Leave ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		else
		{
			cout<<"                    Thank you for your effort!\n";
			cout<<"           the inserted money will be donated in the charity\n";
			main();
		}
	}
}

void selectPhase1() // output the things that the user can buy with the inserted money
{
	if(balance == 250)
	{
	cout<<"                       You can only buy the Pegasus                      \n";
	}
	if((balance > 250) && (balance <= 300))
	{
	cout<<"                   You can buy the Vampire and Werewolf                  \n";
	}
	if((balance > 300) && (balance <= 400))
	{
	cout<<"               You can buy the Vampire, Werewolf and Phoenix    \n";
	}
	if((balance > 400) && (balance <= 450))
	{
	cout<<"        You can buy the Vampire, Werewolf, Phoenix, and Lernean Hydra   \n";
	}
	if(balance >= 500)
	{
	cout<<"                         You can buy anything   \n";
	}
}

void selectPhase2() // insert the code of the item that the user wants to buy, if it is insufficient, the user will have to go back to the inserting of money
{
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                                                                        |\n";
	cout<<"           Insert the code of the item that you want to buy: ";
	cin>>itemNum;
	for(index1 = 0; index1 <6; index1++)
	{
		if(itemCode[itemNum] == itemCode[index1])
		cout<<"\tYup, There is a an item with an item code : ["<<itemCode[itemNum - 1]<<"]\n";
	}
	if((itemNum == 1) && (balance < 500))
	{
		cout<<"                        Insufficient Balance.   \n";
		cout<<"       Would you like to insert more money? [ 1 - Yes | 2 - No ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		selectPhase2();
	}
	if((itemNum == 2) && (balance < 400))
	{
		cout<<"                        Insufficient Balance.   \n";
		cout<<"       Would you like to insert more money? [ 1 - Yes | 2 - No ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		selectPhase2();
	}
	if((itemNum == 3) && (balance < 300))
	{
		cout<<"                        Insufficient Balance.   \n";
		cout<<"       Would you like to insert more money? [ 1 - Yes | 2 - No ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		selectPhase2();
	}
	if((itemNum == 4) && (balance < 250))
	{
		cout<<"                        Insufficient Balance.   \n";
		cout<<"       Would you like to insert more money? [ 1 - Yes | 2 - No ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		selectPhase2();
	}
	if((itemNum == 5) && (balance < 400))
	{
		cout<<"                        Insufficient Balance.   \n";
		cout<<"       Would you like to insert more money? [ 1 - Yes | 2 - No ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		selectPhase2();
	}
	if((itemNum == 6) && (balance < 450))
	{
		cout<<"                        Insufficient Balance.   \n";
		cout<<"       Would you like to insert more money? [ 1 - Yes | 2 - No ]: ";
		cin>>condition;
		if(condition == 1)
		{
			cout<<"|________________________________________________________________________|\n";
			cout<<"|                                                                        |\n";
			insertMoney();
		}
		selectPhase2();
	}						
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                                                                        |\n";
	cout<<"              Are you sure you want to select " << itemPrice[itemNum - 1] << "? \n";
	cout<<"                     [ 1 - Yes | 2 - No ] : ";
	cin>>condition;
	if( condition != 1)
	{
		selectPhase2();
	}
	cout<<"|________________________________________________________________________|\n";
	selectPhase3();
}

void selectPhase3() // process of computing the purchase
{
	
	if(itemNum == 1)
	{
		purchased[itemCount] = "Dragon";
		balance -= 500;
		totalPurchases += 500;
	}
	if(itemNum == 2)
	{
		purchased[itemCount] = "Phoenix";
		balance -= 400;
		totalPurchases += 400;
	}
	if(itemNum == 3)
	{
		purchased[itemCount] = "Vampire";
		balance -= 300;
		totalPurchases += 300;
	}
	if(itemNum == 4)
	{
		purchased[itemCount] = "Pegasus";
		balance -= 250;
		totalPurchases += 250;
	}
	if(itemNum == 5)
	{
		purchased[itemCount] = "Werewolf";
		balance -= 300;
		totalPurchases += 300;
	}
	if(itemNum == 6)
	{
		purchased[itemCount] = "Lernean Hydra";
		balance -= 450;
		totalPurchases += 450;
	}
	change = moneyInserted - totalPurchases;
	itemCount++;
	cout<<"|                                                                        |\n";
	cout<<"                    CONGRATULATIONS FOR PURCHASING!                       \n";
	cout<<"       HERE IS YOUR MYTHICAL PLUSHIE! WITH A CODE "<< itemCode[itemNum - 1] <<"!\n";
	cout<<"|________________________________________________________________________|\n";
	lastPhase();
}

void lastPhase() // the last phase of activity 10 for looping
{
	cout<<"|                                                                        |\n";
	cout<<"                Your available balance is : " << balance <<endl;
	cout<<"          Would you like to buy again? [ 1 - Yes | 2 - No ]: ";
	cin>>condition;
	if(condition == 1)
	{
		cout<<"|________________________________________________________________________|\n";
		cout<<"|                                                                        |\n";
		insertMoney();
		process();
		selectPhase1();
		selectPhase2();
	}
	cout<<"|________________________________________________________________________|\n";
	cout<<"|                                                                        |\n";
	cout<<"                              Receipt: \n";
	for(index1 = 0; index1 < itemCount + 1; index1++)
	{
		cout<<"\t\t"<<purchased[index1]<<endl;
	}
	cout<<"         Total Inserted Money: "<<moneyInserted<<endl;
	cout<<"         Total Purchases: " << totalPurchases <<endl;
	cout<<"         Change: " << change <<endl;
	cout<<"|________________________________________________________________________|\n";
	main();
}










