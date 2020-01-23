#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void main(){
	/*time_t rawtime;
    long long point = time(&rawtime);
    struct tm *info;
    info = gmtime(&rawtime);
	printf("%lld\n", point);
    printf("%d%02d%02d%02d%02d%02d", info->tm_year + 1900, info->tm_mon, info->tm_wday, info->tm_hour, info->tm_min, info->tm_sec);*/
    int first = 1569389114, i;
    int second = 1568784314, third = 1568179514;
    srand(third);
    for(i=0; i < 3746470; i++){
        printf("%d\n", rand()); 
    }
}
