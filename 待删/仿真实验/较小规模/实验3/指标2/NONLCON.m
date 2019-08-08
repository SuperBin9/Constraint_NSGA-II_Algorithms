function Chrom= NONLCON(X,Index,D,time,cost)
m=Index(end);
Chrom=[];
N=size(X);
for i = 1:N
    idx = floor(X(i,:));
    x = zeros(1,m+1);
    %temp = [0,3,5,7,9,12,15,18,24,27,31,33,36,39,41,43];
    temp =[0,4,8,11,15,20,25,27,30,32,35,37,40,44,47,51,55,57,61,64,67,70,74,77,79,83,87,90,93];
    x(idx(idx>0)+temp) = 1;
    if (x(50)~=x(76))&&(x(50)==1)
        x(76)=1;
        x(75)=0;
        x(77)=0;
    elseif (x(50)~=x(76))&&(x(76)==1)
        x(50)=1;
        x(48)=0;
        x(49)=0;
        x(51)=0;
    end
    if (x(11)~=x(73))&&(x(11)==1)
        x(73)=1;
        x(71)=0;
        x(72)=0;
        x(74)=0;
    elseif (x(11)~=x(73))&&(x(73)==1)
        x(11)=1;
        x(9)=0;
        x(10)=0;
    end
    if (x(13)==x(94))&&(x(13)==1)
        x(94)=0;
        x(95)=round(rand(1));
        x(96)=1-x(95);
    elseif (x(13)==x(94))&&(x(13)==0)
        x(94)=1;
        x(95)=0;
        x(96)=0;
    end
    if (x(53)==x(78))&&(x(53)==1)
        x(78)=0;
        x(79)=1;
    elseif (x(53)==x(78))&&(x(53)==0)
        x(78)=1;
        x(79)=0;
    end
    if (x(32)==x(56))&&(x(32)==1)
        x(56)=0;
        x(57)=1;
    elseif (x(32)==x(56))&&(x(32)==0)
        x(56)=1;
        x(57)=0;
    end
    if (x(7)==x(68))&&(x(7)==1)
        x(68)=0;
        x(69)=round(rand(1));
        x(70)=1-x(69);
    elseif (x(7)==x(68))&&(x(7)==0)
        x(68)=1;
        x(69)=0;
        x(70)=0;
    end
    if (x(3)==x(83))&&(x(3)==1)
        x(83)=0;
        x(80)=round(rand(1));
        x(81)=1-x(80);
        x(82)=0;
    elseif (x(3)==x(83))&&(x(3)==0)
        x(83)=1;
        x(80)=0;
        x(81)=0;
        x(82)=0;
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
index=cumsum([4,4,3,4,5,5,2,3,2,3,2,3,4,3,4,4,2,4,3,3,3,4,3,2,4,4,3,3,3]);
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
Chrom=[Chrom;CH];
end
[~,nu]=unique(Chrom,'rows');
Chrom=Chrom(nu(1:length(nu)),:);
Chrom(all(Chrom==0,2),:)=[];
end

        
