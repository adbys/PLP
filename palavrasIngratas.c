#include<stdio.h>
#include<stdlib.h>
#include<string.h>


int main()
{
	char palavra[50];
	char palavra1[50];
	char palavra2[50];
	char palavra3[50];
	int temVogal = 0;
	int count = 0;
	int i;
	

	while (count < 3) {

		scanf("%s", palavra);
		i = strlen(palavra);
		temVogal = 0;

		for (int a = 0; a <= i; a++) {
			if(palavra[a] == 'a' ||
			   palavra[a] == 'e' ||
			   palavra[a] == 'i' ||
			   palavra[a] == 'o' ||
			   palavra[a] == 'u'){
				temVogal = 1;	
			}
		

		}

		if (temVogal == 0 && count == 0) {
			strcpy(palavra1, palavra);
			count++;
		}else if (temVogal == 0 && count == 1) {
			strcpy(palavra2, palavra);
			count++;
		}else if (temVogal == 0 && count == 2) {
			strcpy(palavra3, palavra);
			count++;
		}




	}

	printf("%s\n", palavra1);
	printf("%s\n", palavra2);
	printf("%s\n", palavra3);


}
