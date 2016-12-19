#include <iostream>
#include <cmath>

using namespace std;

int main(){
	cout <<"topology: 3 4 1" << endl;
	for (int i = 100000; i >= 0; --i){
		int n1 = (int)(2.0 * rand() / double(RAND_MAX));
		int n2 = (int)(2.0 * rand() / double(RAND_MAX));
		int n3 = (int)(2.0 * rand() / double(RAND_MAX));
		int t = (n1 & n2) & n3; //hauria de ser 1 o 0
		cout << "in: " << n1 << ".0 " << n2 << ".0 " << n3 <<".0 " <<endl;
		cout << "out: " << t << ".0 " << endl;
 	}
}
