#include <stdio.h>
#include <sys/syscall.h>
#include <linux/kernel.h>
#include <unistd.h>
#include <errno.h>

#define TWOD_COPY_SYSCALL 452

int main(){

	float src[3][3]={{1.0, 2.3, 3.7}, {1.2, 2.6, 4.6}, {3.113, 6.556, 9.234}};
	float dest[3][3];

	long sys_call_status;
	sys_call_status=syscall(TWOD_COPY_SYSCALL, src, dest, 9);
	if(sys_call_status!=EFAULT){
		printf("System call successfully invoked\n");
		for(int i=0; i<3; i++){
			for(int j=0; j<3; j++){
				printf("%f ", dest[i][j]);
			}
			printf("\n");
		} 
	}
	
	return 0;

}
