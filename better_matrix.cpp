#include <iostream>
class matrix{
	public:
		int m;
		int n;
		matrix(int m, int n){
			this -> m = m;
			this -> n = n;
			this -> matrix_values = new float [m*n];
			for(int i = 0; i < (m*n); i++){
				this -> matrix_values[i] = i;
			}
		};
		matrix read_array(float input[]){
			for(int i = 0; i < m*n; i++){
				this -> matrix_values[i] = *input;
				input += 1;
			}
			return(*this);
		};
		void print(){
			for(int i = 0; i < (m*n); i++){
				std::cout << this -> matrix_values[i];
				std::cout << " ";
				if((i+1) % n == 0){
					std::cout << "\n";
				}
			}
		};
		float* get_pointer(int i, int j){
			if(((i < 0 or i > (this -> m) - 1)) or (j < 0 or j > (this -> n) - 1)){
				return(NULL);
			}
			return(&(matrix_values[i*n + j]));
		};
		float get_value(int i, int j){
			if(((i < 0 or i > (this -> m) - 1)) or (j < 0 or j > (this -> n) - 1)){
				return(0);
			}
			return((matrix_values[i*n + j]));
		};
		void set_value(int i, int j, float value){
			matrix_values[i*n + j] = value;
		}
		matrix operator *(float scalar){
			for(int i = 0; i < (m*n); i++){
				(this -> matrix_values)[i] = (this -> matrix_values)[i] * scalar;
			}
			return(*this);
		};
		matrix operator *(matrix input){
			if(this -> n != input.m){
				return(matrix(this -> m, input.n));
			}
			float holder[input.n * this -> m];
			float position_sum;
			int col_count;
			int row_count;
			for(row_count = 0; row_count < (this -> m); row_count++){
				for(col_count = 0; col_count < input.n; col_count++){
					position_sum = 0;
					for(int i = 0; i < input.m; i++){
						position_sum += input.get_value(i, col_count) * (*this).get_value(row_count, i);
					} 
					holder[row_count * (input.n) + col_count] = position_sum;
				}
			}
			matrix output = matrix((this -> m), (input.n));
			output.read_array(holder);
			return(output);
		};
	private:
		float * matrix_values;
};
//int main(){
//	matrix x = matrix(2,2);
//	matrix y = matrix(2,4);
//	float input[4] = {1,2,3,4};
//	float input2[8] = {1,2,3,4,5,6,7,8};
//	x.read_array(input);
//	y.read_array(input2);
//	matrix z = (x*y);
//	z.print();
//}
