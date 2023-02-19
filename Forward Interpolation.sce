//Date : 07/10/2021
//Aim : To find the value of y for an intermediate point (x) using Newton's Forward Interpolation Method for a given dataset
clc
clear
//exec('C:\Users\MANIDIPA BANERJEE\Desktop\SEM III MP LAB\function+sec file of factorial of a number\factorial of a number.sci', -1)
tic()
X = input("X : ")
Y = input("Y : ")
x = input("Enter the value of interpolation : ")
T = [X Y]
disp("The Data Table : ",T)
n =length(Y)
for i = 3:n-1+2   //order
    for j=1:n-i+2   //no. of elements
        T(j,i)= T(j+1,i-1)-T(j,i-1)
end
end
disp("The Forward Difference Table is : ",T)
h = X(2)-X(1)
disp("The step size : ",h)
p = (x-X(1))/h
disp("p : ",p)
p1=p
//Now applying newton's formula
fact=1
for k=1:n-1
    y(k)= (p*T(1,k+2))/factorial(k)
    disp("Intermediate steps : ",y(k))
    p=p*(p1-k)
end
y1=Y(1)+sum (y)
disp("Y : ",y1)
f=toc()
disp("Time taken to do this program :",f)
