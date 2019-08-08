function Chrom= NONLCON(X,Index,D,time,cost)
m=Index(end);
Chrom=[];
N=size(X);
for i = 1:N
    idx = floor(X(i,:));
    x = zeros(1,m+1);
    %temp = [0,3,5,7,9,12,15,18,24,27,31,33,36,39,41,43];
    temp =[0,2,6,9,11,13,16,19,22,24,27,30,35,40,42,46,50,55,59,63,67,70,74,78,81,86,90,95,98];
    x(idx(idx>0)+temp) = 1;
    if (x(26)~=x(46))&&(x(26)==1)
        x(46)=1;
        x(43)=0;
        x(44)=0;
        x(45)=0;
    elseif (x(26)~=x(46))&&(x(46)==1)
        x(26)=1;
        x(25)=0;
        x(27)=0;
    end
    if (x(47)~=x(86))&&(x(47)==1)
        x(86)=1;
        x(82)=0;
        x(83)=0;
        x(84)=0;
        x(85)=0;
    elseif (x(47)~=x(86))&&(x(86)==1)
        x(47)=1;
        x(48)=0;
        x(49)=0;
        x(50)=0;
    end
    if (x(15)~=x(63))&&(x(15)==1)
        x(63)=1;
        x(60)=0;
        x(61)=0;
        x(62)=0;
    elseif (x(15)~=x(63))&&(x(63)==1)
        x(15)=1;
        x(14)=0;
        x(16)=0;
    end
    if (x(2)==x(22))&&(x(2)==1)
        x(22)=0;
        x(20)=round(rand(1));
        x(21)=1-x(20);
    elseif (x(2)==x(22))&&(x(2)==0)
        x(22)=1;
        x(20)=0;
        x(21)=0;
    end
    if (x(41)==x(52))&&(x(41)==1)
        x(52)=0;
        x(51)=round(rand(1));
        x(53)=1-x(51);
        x(54)=0;
        x(55)=0;
    elseif (x(41)==x(52))&&(x(41)==0)
        x(52)=1;
        x(51)=0;
        x(53)=0;
        x(54)=0;
        x(55)=0;
    end
    if (x(9)==x(18))&&(x(9)==1)
        x(18)=0;
        x(17)=round(rand(1));
        x(19)=1-x(17);
    elseif (x(9)==x(18))&&(x(9)==0)
        x(18)=1;
        x(17)=0;
        x(19)=0;
    end
    if (x(29)==x(81))&&(x(29)==1)
        x(81)=0;
        x(79)=round(rand(1));
        x(80)=1-x(79);
    elseif (x(29)==x(81))&&(x(29)==0)
        x(81)=1;
        x(79)=0;
        x(80)=0;
    end
    if (x(70)==x(75))&&(x(70)==1)
        x(75)=0;
        x(76)=round(rand(1));
        x(77)=1-x(76);
        x(78)=0;
    elseif (x(70)==x(75))&&(x(70)==0)
        x(75)=1;
        x(76)=0;
        x(77)=0;
        x(78)=0;
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
index=cumsum([2,4,3,2,2,3,3,3,2,3,3,5,5,2,4,4,5,4,4,4,3,4,4,3,5,4,5,3,4]);
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

        
