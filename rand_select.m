function answer = rand_select(arr,lowest_num,length_array,searched_index)

if lowest_num == length_array %if lowest num equal to length
    answer = arr(lowest_num);
end

[arr, pivot] = rand_partition(arr,lowest_num,length_array); %call partition for select pivot
k = pivot-lowest_num+1; 

if searched_index == k %if searched equal to pivot
    answer = arr(pivot);

elseif searched_index < k %if searched less than pivot
    answer = rand_select(arr,lowest_num,pivot-1,searched_index); %recursively select
else %else
    answer = rand_select(arr,pivot+1,length_array,searched_index-k); %recursively select
end
end