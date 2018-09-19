%% *Experiment No.- 2* _Matrix operations :-Addition,Subtraction,Multiplication,Transepose,Inverse._ 

clc;clear all;close all;

disp('******************************************************')
disp('***********          OUTPUT               ************')
disp('******************************************************')

M1 = [1,2,13;14,5,6;7,8,56];
disp('First matrix is "M1"')%disp is used to diplay strings and values
disp(M1)
disp('')
M2 = [11 102 3;14 5 36;7 88 9];
disp('First matrix is "M2"')%disp is used to diplay strings and values
disp(M2)
disp('')
%Addition
add_M1_M2 = M1+M2;
disp('Addition of matrix M1 and M2 is')
disp(add_M1_M2)
%Subtraction
sub_M1_M2 = M1-M2;
disp('Subtraction of matrix M1 and M2 is')
disp(sub_M1_M2)
% Matrix Multiplication
Mat_mul = M1*M2
disp('Matrix Multiplication of matrix M1 and M2 is')
disp(Mat_mul)
% Element-wise Matrix Multiplication
Ele_mul = M1.*M2
disp('Element Wise multiplication ofmatrix M1 and M2 is')
disp(Ele_mul)
 
%Inverse
disp('Inverse of M1 ')
disp(inv(M1))

disp('Inverse of M2 ')
disp(inv(M2))


disp('Transpose of M1 ')
disp(transpose(M1))

disp('Transpose of M2 ')
disp(M2')





