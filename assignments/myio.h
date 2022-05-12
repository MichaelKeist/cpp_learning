//Algorithm to get hamming distance between two strings
#include <iostream>
#include <stdarg.h>
using namespace std;
void prints(int n = 1,...){
	string temp;
	va_list args;
	va_start(args, n);
	for(int i = 0; i < n; i++){
		temp = va_arg(args, string);
		cout << temp;
		if(i != n-1){
			cout << " ";
		}
	}
	cout << "\n";
}
void printc(int n = 1,...){
	string temp;
	va_list args;
	va_start(args, n);
	for(int i = 0; i < n; i++){
		temp = va_arg(args, const char*);
		cout << temp;
		if(i != n-1){
			cout << " ";
		}
	
	cout << "\n";
	}
}
string read(string message){
	string input;
	cout << message;
	getline(cin, input);
	return input;
}
