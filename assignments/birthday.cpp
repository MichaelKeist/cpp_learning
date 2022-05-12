#include <iostream>
#include </home/michael/cpp/assignments/myio.h>
#include <vector>
using namespace std;
class person {
	public:
		person(string a, int b){
			name = a;
			birthday = b;
		}
		string get_name(){
			return name;
		}
		int get_birthday(){
			return birthday;
		}
		bool operator==(person other){
	        	return this->get_birthday() == other.get_birthday();
		}
	private:
		string name;
		int birthday;
};
int sample(int people){
	int bday;
	vector<int> days;
	for(int i = 0; i < people; i++){
		bday = rand() % 365 + 1;
		person temp = person("a", bday);
		days.push_back(temp.get_birthday());
	}
	int i = 0;
	while(&days[i] != &days[days.size()]){
		for(int j = i; j < days.size(); j++){
			if(j != i and days[i] == days[j]){
				return true;
			}
		}
		//days.erase(days.begin() + i);
		i++;
	}
	return false;
}
float run_test(int iterations, int people){
	int sum = 0;
	for(int i = 0; i < iterations; i++){
		if(sample(people)){
			sum ++;
		}
	}
	float output = static_cast<float>(sum)/iterations;
	return output;
}
int main(){
	float ratio = run_test(1000000, 20);
	printf("%6.20f", ratio);
	cout << "\n";
	return 0;
}
