N=500;
trace_1=zeros(1,N); 
for i=1:1:N
    [Chromosome,V]=nsga_2_optimization(i,i*10); 
    trace_1(1,i)= size(Chromosome,1);
end
xlswrite('data61.xlsx',trace_1,1);
figure
plot(10:10:10000,trace_1,'*-');
