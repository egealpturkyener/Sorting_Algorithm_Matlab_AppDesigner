function multiplication_matrix = multiplication_matrix(first_matrix,second_matrix)
% The size of each matrix is considered for these calculations
[row1, column1] = size(first_matrix); 
[row2, column2] = size(second_matrix);

% prevent unappropriate matrix size
if column1 ~= row2
    msgbox('Your number of column of the first array and number of row of the second array should match', 'Error','error');
   
else
% Main code
% Vary each row of first matrix 
for i = 1 : row1
    for j = 1 :column2
        result_matrix(i,j)=0;
        for k = 1:column1
            result_matrix(i,j)=result_matrix(i,j)+first_matrix(i,k)*second_matrix(k,j);
        end
    end
    
end
disp("Multiplication of these 2 matrix is:"); %displaying the result.
disp(result_matrix); %display multiplication of the matrices.
multiplication_matrix = result_matrix;

end

