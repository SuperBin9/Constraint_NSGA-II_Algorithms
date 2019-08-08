function f  = replace_chromosome(intermediate_chromosome)
global M V Population
[N1, ~] = size(intermediate_chromosome); 
[~,index] = sort(intermediate_chromosome(:,M + V + 1));
sorted_chromosome=zeros(N1,M+V+3);
%f1=zeros(Population,V+M+3);
 for i = 1 : N1
    sorted_chromosome(i,:) = intermediate_chromosome(index(i),:);
 end
 max_rank = max(intermediate_chromosome(:,M + V + 1));
 previous_index = 0;
for i = 1 : (max_rank-1)
    current_index = find(sorted_chromosome(:,M + V + 1) == i, 1, 'last' );
    if current_index > Population
        remaining = Population - previous_index;
        temp_pop = ...
            sorted_chromosome(previous_index + 1 : current_index, :);
        [~,temp_sort_index] = ...
            sort(temp_pop(:, M + V + 2),'descend');
        for j = 1 : remaining
            f(previous_index + j,:) = temp_pop(temp_sort_index(j),:);
        end
        %return;
%     elseif current_index < Population
%         f(previous_index + 1 : current_index, :) = ...
%             sorted_chromosome(previous_index + 1 : current_index, :);
    else
        f(previous_index + 1 : current_index, :) = ...
            sorted_chromosome(previous_index + 1 : current_index, :);
        %return;
    end
    previous_index = current_index;
end
Nd=size(f,1);
if Nd<Population
    NeedNu=Population-Nd;
    Need_chrom=intermediate_chromosome(intermediate_chromosome(:,V+M+1)==max_rank,:);
    [~,index1]=sort(Need_chrom(:,V+M+3));
    for i=1:NeedNu
        f(Nd+i,:)=Need_chrom(index1(i),:);
    end
end
        