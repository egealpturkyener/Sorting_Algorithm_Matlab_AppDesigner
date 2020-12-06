%Ege Alp Türkyener
function [arr] = quicksort(arr,low,high)

if low < high %if last item bigger than first item
     [arr, pivot] = partition(arr, low, high); %call function partition
     arr = quicksort(arr,low,pivot-1); %recursive calling the itself.
     arr = quicksort(arr,pivot+1,high); %recursive calling the itself.
     
end

end