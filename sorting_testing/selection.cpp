#include <iostream>
#include <fstream>
using namespace std;
//prints out array set of length n elements separated by commas and spaces
void get_size(int* n){
	int line = 0;
	ifstream nums("nums");
	while(nums >> line){
		(*n)++;
	}
}
void print_array(int* set, int n){
	for(int i = 0; i < n; i++){
		cout << set[i];
		cout << ", ";
	}
	cout << "\n";
}
//reads in a file of integers (one int per line) and assigns to array set, and assigns size of array to n
void read_nums(int* set, int* n){
	ifstream nums("nums");
	int line;
	int count = 0;
	while(nums >> line){
		set[count] = line;
		count++;
	}
	nums.close();
}
//checks if input list of size n is in ascending order
bool sort_checker(int* set, int n){
	if(n == 1){
		return true;
	}
	for(int i = 1; i < n; i++){
		if((set[i] < set[i-1])){
			return false;
		}
	}
	return true;
}
//performs selection sort on array set of size n
void selection_sort(int* set, int n){
	int holder;
	int* position_pointer;
	int* selection_pointer;
	int* min_val;
	for(int i = 0; i < (n-1); i++){
		position_pointer = set + i;
		min_val = position_pointer;
		for(int j = i+1; j < n; j++){
			selection_pointer = set + j;
			if(*selection_pointer < *min_val){
				min_val = selection_pointer;
			}
		}
		holder = *position_pointer;
		*position_pointer = *min_val;
		*min_val = holder;
	}
}
void merge_split(int* set, int n, int* out1, int* out2){
	int one_size;
	if(n%2 == 0){
		one_size = n/2;
	}else{
		one_size = (n/2)+1;
	}
	for(int i = 0; i < (n); i++){
		if(i < (one_size)){
			out1[i] = *(set+i);
		}else{
			out2[i - (one_size)] = *(set+i);
		}
	}
}
int main(){
	//initialize important variables
	int n = 0;
	get_size(&n);
	int set[n];
	//read in nums data, sort, and check
	read_nums(set, &n);
	int out1[4];
	int out2[3];
	merge_split(set, n, out1, out2);
	print_array(out1, 4);
	print_array(out2, 3);
	//selection_sort(set, n);
	print_array(set, n);
	if(sort_checker(set, n)){
		cout << "The list is sorted!\n";
	}else{
		cout << "The list is not sorted :(\n";
	}
}
