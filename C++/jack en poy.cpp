#include <iostream>

using namespace std;

void prompt();
void process();

int p1, p2;

int main()
{
	prompt();
	process();
}

void prompt()
{
	string space = "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
	
	cout<<"\n\t\t\t\t jack en poy \n[ 1 : Rock ]\n[ 2 : Paper ]\n[ 3 : Scissor ]\n\n" ;
	
	cout<<"Player 1: ";
	cin>>p1;
	
	cout<<space;
	
	cout<<"\n\t\t\t\t jack en poy \n[ 1 : Rock ]\n[ 2 : Paper ]\n[ 3 : Scissor ]\n\n" ;
	
	cout<<"Player 2: ";
	cin>>p2;
	
	cout<<space;
		
}

void process()
{
	if((p1 == 1)&&(p2 == 2))
	{
		cout<<"Player 2 wins!\n";
		cout<<"Paper beats rock!\n";
	}
	
	if((p1 == 1)&&(p2 == 3))
	{
		cout<<"Player 1 wins!\n";
		cout<<"Rock beats scissor!\n";
	}
	
	if((p1 == 2)&&(p2 == 1))
	{
		cout<<"Player 1 wins!\n";
		cout<<"Paper beats rock!\n";
	}	
	
	if((p1 == 2)&&(p2 == 3))
	{
		cout<<"Player 2 wins!\n";
		cout<<"scissor beats paper!\n";
	}
	
	if((p1 == 3)&&(p2 == 2))
	{
		cout<<"Player 1 wins!\n";
		cout<<"scissor beats paper!\n";
	}
	
	if((p1 == 3)&&(p2 == 1))
	{
		cout<<"Player 2 wins!\n";
		cout<<"Rock beats scissor!\n";
	}
	
	if((p1 == 1)&&(p2 == 1))
	{
		cout<<"It's a tie!\n";
		cout<<"rock vs rock is a tie!";
	}
	
	if((p1 == 2)&&(p2 == 2))
	{
		cout<<"It's a tie!\n";
		cout<<"paper vs paper is a tie!";
	}
	
		if((p1 == 3)&&(p2 == 3))
	{
		cout<<"It's a tie!\n";
		cout<<"scissor vs scissor is a tie!";
	}
	
}