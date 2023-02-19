//Date : 28/10/2021
//Aim : To find the value of y for an intermediate point (x) using Lagrange's Interpolation Method for a given dataset
clc
clear
X= input("X : ")
Y= input("Y : ")
x = input("Enter the value of interpolation : ")
n=length(Y)
L1=0 //to store the result after each itration
for i=1:n//no of itration
    num=1
    Den=1
    for j=1:n //for calculating numerator and denominator
        if(i==j)//skip calculation for numerator and denominator
            continue
         else
             num=num*(x-X(j))//numerator calculation
             Den=Den*(X(i)-X(j))//denominator calculation
         end
     end
     L=(num/Den)*Y(i)
     L1=L1+L
 end
disp("The final result : ",L1)

