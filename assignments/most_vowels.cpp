//reads in several strings, then finds the one with the most vowels
#include <iostream>
#include </home/michael/cpp/assignments/myio.h>
#include <vector>
using namespace std;
int get_vowels(string input){
	int sum = 0;
	for(auto it = input.begin(); it != input.end(); it++){
		if(*it == 'A' or *it == 'a' or *it == 'E' or *it == 'e' or *it == 'I' or *it == 'i' or *it == 'O' or *it == 'o' or *it == 'U' or *it == 'u'){
			sum++;
		}
	}
	return sum;
}
int main(){
	vector<int> tracker;
	bool no_vowels = true;
	bool possible_tie = false;
	int largest = 0;
	int current;
	int n = 5;
	int i = 0;
	string inputs[n];
	string newest = "a";
	newest = read("Input a string: ");
	while(newest != "" and i < n){
		inputs[i] = newest;
		i++;
		if(i < n){
			newest = read("Input a string: ");
		}
	}
	n = i;
	for(int i = 0; i < n; i++){
		current = get_vowels(inputs[i]);
		if(current > largest){
			no_vowels = false;
			largest = current;
			tracker.clear();
			tracker.push_back(i);
			possible_tie = false;
		}else if(current == largest){
			tracker.push_back(i);
			possible_tie = true;
		}
	}
	if(no_vowels){
		printc(1, "None of the input strings contain vowels");
	}
	else if(not possible_tie){
		printc(1, "The string with the most vowels was:");
		prints(1, inputs[tracker[0]]);
	}else{
		printc(1, "The string with the most vowels was a tie between the following strings:");
		for(auto it = tracker.begin(); it != tracker.end(); it++){
			prints(1, inputs[*it]);
		}
	}
	return 0;
}
