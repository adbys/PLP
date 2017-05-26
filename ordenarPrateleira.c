#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#define STRSIZE 150


int main() {

	int qnt;
	scanf("%d", &qnt);
	setbuf(stdin, NULL);
	char titulos[qnt][STRSIZE];


	for(int i = 0; i < qnt; i++) {

		scanf("%[^\n]s", titulos[i]);
		setbuf(stdin, NULL);

	}


	for(int j = qnt-1; j > 0; j--) {
		for(int i = 0; i < j; i++) {
			if(strcmp(titulos[i], titulos[i+1]) > 0) {
				
				char aux[STRSIZE];
				strcpy(aux, titulos[i]);
				strcpy(titulos[i], titulos[i+1]);
				strcpy(titulos[i+1], aux);
			
			}

		}


	}

	
	for(int i = 0; i < qnt; i++) {

		printf("%s\n", titulos[i]);

	}




}
