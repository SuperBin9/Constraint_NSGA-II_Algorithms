function Chrom= NONLCON_1(X)
Index=[4,6,10,14,17,20,23,27,30,32,36,41,43,47,51,55,59,62,67,71,75,77,80,84,87,90,94,98,102];
D=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,1,0,0,0,0,1,0,1,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,1,1,0,0;...
   0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,1,1,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,0,0,1;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];
time=[2,4,2,9,1,7,6,9,3,10,5,9,4,10,4,3,5,2,9,3,5,10,11,6,9,4,7,10,6,0.000100000000000000,1,5,2,4,4,9,1,5,4,7,4,1,10,9,10,...
      5,7,6,7,4,0.000100000000000000,1,4,3,7,7,6,4,2,11,4,6,11,5,4,6,7,10,2,6,9,8,7,1,5,7,4,6,8,3,2,4,2,0.000100000000000000,...
      10,5,0.000100000000000000,9,2,8,6,7,2,3,7,1,3,6,3,5,10,10,0];
cost=[61;58;11;98;62;81;61;89;63;74;23;49;72;19;50;25;56;84;18;82;61;63;28;49;37;13;13;51;77;0;45;25;85;64;80;86;64;80;65;...
      12;78;26;51;56;54;86;26;11;86;77;0;48;21;40;19;74;17;29;62;36;69;82;42;18;83;81;45;88;45;33;85;76;56;68;29;91;97;39;...
      88;38;12;14;27;0;33;92;0;22;83;46;12;87;35;74;42;81;86;58;60;21;44;49;0];
m=Index(end);
x = zeros(1,m+1);
    %temp = [0,5,8,12,14,16,20,24,27,30,34,37,41,45,49,53,58,62,65,70,74,76,80,84,88,92,96,98,103];
    temp =[0,4,6,10,14,17,20,23,27,30,32,36,41,43,47,51,55,59,62,67,71,75,77,80,84,87,90,94,98];
    x(X(X>0)+temp) = 1;
   if (x(12)~=x(76))&&(x(12)==1)
        x(76)=1;
        x(77)=0;
    elseif (x(12)~=x(76))&&(x(76)==1)
        x(12)=1;
        x(11)=0;
        x(13)=0;
        x(14)=0;
    end
    if (x(20)~=x(101))&&(x(20)==1)
        x(101)=1;
        x(99)=0;
        x(100)=0;
        x(102)=0;
    elseif (x(20)~=x(101))&&(x(101)==1)
        x(20)=1;
        x(18)=0;
        x(19)=0;
    end
    if (x(80)~=x(87))&&(x(80)==1)
        x(87)=1;
        x(85)=0;
        x(86)=0;
    elseif (x(80)~=x(87))&&(x(87)==1)
        x(80)=1;
        x(78)=0;
        x(79)=0;
    end
    if (x(15)==x(42))&&(x(15)==1)
        x(42)=0;
        x(43)=1;
    elseif (x(15)==x(42))&&(x(15)==0)
        x(42)=1;
        x(43)=0;
    end
    if (x(25)==x(59))&&(x(25)==1)
        x(59)=0;
        x(56)=round(rand(1));
        x(57)=1-x(56);
        x(58)=0;
    elseif (x(25)==x(59))&&(x(25)==0)
        x(59)=1;
        x(56)=0;
        x(57)=0;
        x(58)=0;
    end
    if (x(30)==x(64))&&(x(30)==1)
        x(64)=0;
        x(63)=round(rand(1));
        x(65)=1-x(63);
        x(66)=0;
        x(67)=0;
    elseif (x(30)==x(64))&&(x(30)==0)
        x(64)=1;
        x(63)=0;
        x(65)=0;
        x(66)=0;
        x(67)=0;
    end
    if (x(75)==x(84))&&(x(75)==1)
        x(84)=0;
        x(81)=round(rand(1));
        x(82)=1-x(81);
        x(83)=0;
    elseif (x(75)==x(84))&&(x(75)==0)
        x(84)=1;
        x(81)=0;
        x(82)=0;
        x(83)=0;
    end
    if (x(92)==x(95))&&(x(92)==1)
        x(95)=0;
        x(96)=round(rand(1));
        x(97)=1-x(96);
        x(98)=0;
    elseif (x(92)==x(95))&&(x(92)==0)
        x(95)=1;
        x(96)=0;
        x(97)=0;
        x(98)=0;
    end
    x(end)=1;
%cost=[20;60;90;12;6;50;46;60;120;25;12;5;88;74;160;9.7;32;68;91.5;192;457;330;10;32;95;0;34;22;9.3;13;6;8;0;70;96;82;94;12;63;60;190;120;250;0;10;60;0];
%time=[4,5,7,2,3,5,4,5,8,2,1,1,4,5,8,2,3,3,5,6,8,9,2,3,4,0.0001,1,1,2,2,2,2,0.0001,22,17,18,5,2,3,1,3,2,1,0.0001,2,7,0];
nu=size(D,2);
rr=x.*time;
CC=rr(rr~=0)';
pp=repmat(CC,1,nu);
C=pp.*D;
%C=timehandle(x,A,m);
n1=size(C,2);
ST=zeros(1,n1);%每一个模块的开始时间初始化为0
  for k=2:n1
      tt=0;
      for l=1:(k-1)
          if (C(l,k)>0)&&(C(l,k))~=0.0001
              tt=[tt,C(l,k)+ST(l)];
          elseif C(l,k)==0.0001
              C(l,k)=0;
              tt=[tt,C(l,k)+ST(l)];
          end
      end
      ST(k)=max(tt);
  end
  c1= max(ST(n1)-50,0);%约束条件1：最大的时间不能超过60
  g3=x*cost; 
  c2 = max( g3-1500,0);%约束条件2：最大的费用不能超过15
%if (c1<=0)&&(c2<=0)
    %tenp1(i,:)=x;%Chrom(i,:)=idx;
%end
%end
%[~,nu]=unique(tenp1,'rows');
%Chrom=X(nu(1:length(nu)),:);
index=cumsum([4,2,4,4,3,3,3,4,3,2,4,5,2,4,4,4,4,3,5,4,4,2,3,4,3,3,4,4,4]);
nb=size(index,2);
CH=zeros(1,nb);
 if (c1==0)&&(c2==0)
       a=x(1:end-1);
        for j=1:nb
           if j==1
            temp=a(1:index(j));
            CH(j)=find(temp~=0);
           else
             temp=a(index(j-1)+1:index(j));
             CH(j)=find(temp~=0);
           end
        end
 end
Chrom=CH;
Chrom(all(Chrom==0,2),:)=[];
end