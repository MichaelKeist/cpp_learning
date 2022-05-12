#include </home/michael/cpp/assignments/myio.h>
#include <iostream>
using namespace std;
int main(){
	int sum = 0;
	string input_1, input_2;
	input_1 = read("Input the first string: ");
	input_2 = read("Input the second string: ");
	while(input_2.length() != input_1.length()){
		printc(1, "Strings must be of the same length");
		input_2 = read("Input the second string: ");
	}
	for(int i = 0; i < input_2.length(); i++){
		if(input_1[i] != input_2[i]){
			sum += 1;
		}
	}
	cout << "The Hamming distance is: ";
	cout << sum;
	cout << "\n";
	return 0;
}
