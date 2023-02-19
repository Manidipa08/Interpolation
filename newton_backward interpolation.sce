//Date : 11/11/2021
//Aim : To find the value of y for an intermediate point (x) using Newton's Backward Interpolation Method for a given dataset.
clc
clear
tic()
X = input("X : ")
Y = input("Y : ")
x = input("Enter the value of interpolation : ")
T = [X Y]
disp("The Data Table : ",T)
n =length(Y)
for i=3:n-1+2 //order
   for j=i-1:n //no of elements//positions
       T(j,i)=T(j,i-1)-T(j-1,i-1)
end
end
disp("The backward Difference Table is : ",T)
h=X(2)-X(1)
disp("The step size : ",h)
p=(x-X(n))/h
disp("P : ",p)
p1=p
//Applying newton's formula
for k=1:n-1 //no. of itration(positions)
    y(k)=(p*T(n,k+2))/factorial(k)
    disp("Intermediate steps : ",y(k))
    p=p*(p1+k)
end
y1=Y(n)+sum (y)
disp("Y : ",y1)
f=toc()
disp("Time taken to do this program :",f)
