#include<sys/socket.h>
#include<stdio.h>
#include<stdlib.h>
#include<arpa/inet.h>
#include<string.h>

int main(void){
  printf("%d %d\n", AF_INET, SOCK_STREAM);
  int sockfd = socket(AF_INET, SOCK_STREAM, 0);
  int sockfd2 = socket(AF_INET, SOCK_STREAM, 0);
  printf("%d %d\n", sockfd, sockfd2);
  printf("%d\n", INADDR_ANY);
}
