#include <iostream>

using namespace std;

string ticktack[3][3];
int r, c, num;

void inputx();
void inputo();
void check();

int main()
{
	//ticktack toe
	
	inputx();
}

void inputx()
{
	cout<<"What row do you want to input [X]: ";
	cin>>r;
	cout<<"What column do you want to input [X]: ";
	cin>>c;
	
	if(ticktack[r][c] != "")
	{
		cout<<"please input a valid value. \n";
		inputx();
	}
	
	ticktack[r][c] = "X";
	
	check();
	inputo();
}

void inputo()
{
	cout<<"What row do you want to input [O]: ";
	cin>>r;
	cout<<"What column do you want to input [O]: ";
	cin>>c;
	
	if(ticktack[r][c] != "")
	{
		cout<<"please input a valid value. \n";
		inputo();
	}
	
	ticktack[r][c] = "O";
	
	check();
	inputx();
}

void check()
{
	for(int i = 0; i < 3; i++)
	{
		for(int j = 0; j < 3; j++)
		{
			cout<<ticktack[i][j]<<"\t";
		}
		cout<<endl;
	}
	
	if(ticktack[0][0] == "X" && ticktack[0][1] == "X" && ticktack[0][2] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	if(ticktack[1][0] == "X" && ticktack[1][1] == "X" && ticktack[1][2] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	if(ticktack[2][0] == "X" && ticktack[2][1] == "X" && ticktack[2][2] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	
	if(ticktack[0][0] == "X" && ticktack[1][0] == "X" && ticktack[2][0] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	if(ticktack[0][1] == "X" && ticktack[1][1] == "X" && ticktack[2][1] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	if(ticktack[0][2] == "X" && ticktack[1][2] == "X" && ticktack[2][2] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	if(ticktack[0][0] == "X" && ticktack[1][1] == "X" && ticktack[2][2] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	if(ticktack[0][2] == "X" && ticktack[1][1] == "X" && ticktack[2][0] == "X")
	{
		cout<<"player 1 wins";
		exit(0);
	}
	
	
	
	if(ticktack[0][0] == "O" && ticktack[0][1] == "O" && ticktack[0][2] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	if(ticktack[1][0] == "O" && ticktack[1][1] == "O" && ticktack[1][2] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	if(ticktack[2][0] == "O" && ticktack[2][1] == "O" && ticktack[2][2] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	
	if(ticktack[0][0] == "O" && ticktack[1][0] == "O" && ticktack[2][0] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	if(ticktack[0][1] == "O" && ticktack[1][1] == "O" && ticktack[2][1] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	if(ticktack[0][2] == "O" && ticktack[1][2] == "O" && ticktack[2][2] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	if(ticktack[0][0] == "O" && ticktack[1][1] == "O" && ticktack[2][2] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	if(ticktack[0][2] == "O" && ticktack[1][1] == "O" && ticktack[2][0] == "O")
	{
		cout<<"player 2 wins";
		exit(0);
	}
	
	for(int i = 0; i < 3; i++)
	{
		for(int j = 0; j < 3; j++)
		{
			if(ticktack[i][j] != "")
			{
				num += 1;
				if(num == 9)
				{
					cout<<"The game is a tie.";
					exit(0);
				}
			}
		}
	}
	num = 0;
	
}
