#include <iostream>
#include <fstream>
#include </home/michael/cpp/better_matrix.cpp>
int main(){
	std::ifstream nums("input.txt");
	if(nums.is_open()){
		int buffer;
		while(nums >> buffer){
			std::cout << buffer << "\n";
		}
	}
	std::cout << "test\n";
	nums.close();
}
matrix_values
