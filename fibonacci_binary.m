function fibonacci_binary = fibonacci_binary(searched_number)
%creating a fibonacci series
F(1)=0; %first index is 0
F(2)=1; %second index is 1
for i=3:1:100 %foor loop for creating the series 
 F(i)=F(i-1)+F(i-2);
end
fibonacci_binary  = binary_search2(F ,searched_number); %calling functipn
