#include <stdio.h>
#include <unistd.h>

int main() {
    pid_t pid = fork();
    if (pid == 0) {
        printf("This is the child : %d\n", getpid());
    } else if (pid > 0) {
        printf("This is the parent : %d\n", getpid());
    } else {
        printf("Fork failed!\n");
    }
    return 0;
}
