#include <iostream>
class matrix_num{
	public:
		int num_rows;
		int num_cols;
		int value;
		matrix_num* start_pointer;
		matrix_num* next_value;
		bool is_last;
		matrix_num(int value, int m, int n, bool is_last){
			this -> num_rows = m;
			this -> num_cols = n;
			this -> value = value;
			this -> is_last = is_last;
		}
		int get(int i, int j){
			matrix_num current_val = *(this -> start_pointer);
			int distance = (i * num_cols) + j;
			while(distance > 0){
				current_val = *(current_val.next_value);
				distance --;
			}
			return current_val.value;
		};
		void print(){
			matrix_num current_val = *(this -> start_pointer);
			int count = 0;
			while(count < (this -> num_rows) * (this -> num_cols)){
				std::cout << current_val.value;
				std::cout << " ";
				if((count+1) % (num_cols) == 0){
					std::cout << "\n";
				}
				if(not current_val.is_last){
					current_val = *(current_val.next_value);
				}
				count ++;
			}
		}
};
matrix_num read_from_array(int nums[], int m, int n){
	matrix_num* last_val = NULL;
	matrix_num* first_pointer = NULL;
	for(int i = 0; i < m*n; i++){
		matrix_num* current_val = new matrix_num(nums[i], m, n, false);
		if(i == 0){
			(*current_val).start_pointer = (current_val);
			first_pointer = (*current_val).start_pointer;
		}else{
			(*current_val).start_pointer = first_pointer;
			(*last_val).next_value = (current_val);
		}
		last_val = current_val;
	}
	(*last_val).is_last = true;
	return(*first_pointer);
}
int main(){
	int nums2[20] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
	matrix_num x = read_from_array(nums2, 5, 4);
	int z = x.get(4,3);
	std::cout << z;
	std::cout << "\n";
	x.print();
}
