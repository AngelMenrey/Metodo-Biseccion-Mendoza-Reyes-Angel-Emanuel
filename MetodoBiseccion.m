%ANGEL EMANUEL MENDOZA REYES
%22110083
%CETI COLOMOS
%METODOS NUMERICOS
%DESARROLLO DE SOFTWARE
%METODO DE BISECCION
clc
f=input('Ingrese la Funcion en comiilas sencillas');
f=inline(f);
a=input('Digite el limite inferior del intervalo');
b=input('Digite el limite superior del intervalo');
tol=input('ingrese el error maximo permitido');
if(f(a)*f(b)>0);
error('no se cumple el teorema del valor intermedio');
end
cont=0;
while(abs(b-a)>tol)
m=(a+b)/2;
if(f(a)*f(m)<0)
b=m;
end
if(f(m)*f(b)<0)
a=m;
end
if(abs(f(m))<eps)
    fprintf('\n la raiz es %f\n\n',m);
return
end
cont=cont+1;
end
fprintf('\n\n')
