#include <stdio.h>

int main(){
	int i = 0;
	int num = 0;

	while(i < 10){
		printf("\nIntroduzca un numero %d:", i+1);
		scanf("%d", &num);
		if(num % 3 == 0){
			printf("\n%d es multiplo", num);
		}
		else{
			printf("\n%d no es multiplo", num);
		}
		i = i + 1;
	}
}