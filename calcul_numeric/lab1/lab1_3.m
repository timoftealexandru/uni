% III GRAPHS
%1.

x=0:0.001:1;

f = @ (x) exp(10 * x.*(x-1)).*sin(12*pi*x)
plot(x,f(x))

f2 = @ (x) exp(5*x.^2-1).*sqrt(3*cos(12*pi*x))

plot(x,f2(x))


%2.
a=2
b=3
t=0:0.1:10*pi
x = @ (t) (a+b).*cos(t)-b*cos((a/b+1)*t)

y = @ (t) (a+b).*sin(t)-b*sin((a/b+1)*t)

plot(t,x(t),t,y(t))



%3
x=0:0.1:2*pi
f1= @ (x) cos(x)

f2= @ (x) sin(x)

f3= @ (x) cos(2*x)

plot(x,f1(x),x,f2(x),x,f3(x))


%4
x1=0:2:50
x2=1:2:49
y1=x1/2
y2=3*x2+1
y=zeros(1,51)
y(1:2:51)=y1
y(2:2:50)=y2
plot(0:50,y)

%5
res = 2
for c=1:10
    res = 1 + 1/res
end
disp(res)

%6
[X, Y]=meshgrid(-2:0.01:2, -4:0.01:4);

bar= @(x,y) exp(-((x-1/2).^2+(y-1/2).^2))
mesh(X,Y,bar(X,Y))







