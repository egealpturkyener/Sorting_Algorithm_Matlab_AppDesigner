function fibonacci_number = fibonacci(terim_sayisi)
%creating a fibonacci series

F(1)=0; %first index is 0
F(2)=1; %second index is 1
for i=3:1:terim_sayisi %foor loop for creating the series
 F(i)=F(i-1)+F(i-2);
end
fibonacci_number = F(:,terim_sayisi); 
