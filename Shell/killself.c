#include <stdio.h>
#include <signal.h>
int main()
{
	printf("test process begin\n");

	sleep(10);

	printf("test process kill himself...\n");
	kill(getpid(), SIGKILL);
}
