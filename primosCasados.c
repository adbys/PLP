#include<stdio.h>
#include<stdbool.h>

bool isPrime(int num) {

	for (int i = 2; i < num; i++) {
		if ((num % i) == 0) {
			return false;
		}
	}

	return true;

} 

int main() {

	int num;

	scanf("%d", &num);

	for(int i = 1; i <= num; i++) {

		if (isPrime(i)) {
				if(isPrime(i+2) && (i+2) <= num) {
					printf("%d %d\n", i, i+2);
				}
		} 


	}








}
