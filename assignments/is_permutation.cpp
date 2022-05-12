#include <bits/stdc++.h>
#include <iostream>
#include <vector>
#include </home/michael/cpp/assignments/myio.h>
using namespace std;
bool r_permute(vector<int> input_1, vector<int> input_2){
	if(input_1 == input_2 and input_1.size() == 0){
		return true;
	}
	for(vector<int>::iterator it = input_2.begin(); it != input_2.end(); it++){
		if(input_1[0] == *it){
			input_1.erase(input_1.begin());
			input_2.erase(it);
			return r_permute(input_1, input_2);
		}
	}
	return false;
}
int main(){
	vector<int> input_1{2,2,1};
	vector<int> input_2{2,1,1};
	if(r_permute(input_1, input_2)){
		printc(1, "The two vectors are permutations of eachother");
	}else{
		printc(1, "The two vectors are not permutations of eachother");
	}
	return 0;
}
