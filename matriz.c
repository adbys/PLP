#include<stdio.h>



int main() {

	int size;

	scanf("%d", &size);

	int matriz[size][size];

	for(int i = 0; i < size; i++) {
		for(int j = 0; j < size; j++) {

		scanf("%d", &matriz[i][j]);


		}
		

		
	}


	for(int i = 0; i < size; i++) {
		for(int j = 0; j < i; j++) {


		int aux = matriz[i][j];
		matriz[i][j] = matriz[j][i];
		matriz[j][i] = aux;


		}
		
	}

	for(int i = 0; i < size; i++) {
		for(int j = 0; j < size; j++) {

		printf("%d", matriz[i][j]);
		if (j != size - 1) {
			printf(" ");

		}


		}
		if (i != size - 1){
			printf("\n");
		}
		

		
	}





}
