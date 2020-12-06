function [binary_search] = binary_search2(A, searched_number)
%% Constants  %creating some constants
first_index = 1; 
length_number = length(A);
key = 0;

%% Loop
while first_index <= length_number %if length bigger than first one 
   mid = ceil((first_index + length_number) / 2);

if A(mid) == searched_number %if mid equal to searched number
    binary_search = mid; %binary search equal mid
    key = 1;
    break;
elseif A(mid) > searched_number %if mid bigger than searched number
    length_number = mid - 1;
    else
        first_index = mid + 1;
end
end
%% 
if key == 0 %if key 0 it is invalid.
   f = uifigure;
   uialert(f,'Invalid entry','Invalid File');
end
end


