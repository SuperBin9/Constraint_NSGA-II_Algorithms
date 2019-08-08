function F=fitness(X,Index,D,time,cost,Performance) 
m=Index(end);
for i = 1:size(X,1)
    idx = floor(X(i,:));
x = zeros(1,m+1);
 temp =[0,3,8,11,16,19,23,27,31,34,37,39,43,46,48,53,56,59,62,66,70,74,77,80,83,86,88,90,95];
    x(idx(idx>0)+temp) = 1;
    if (x(17)~=x(79))&&(x(17)==1)
        x(79)=1;
        x(78)=0;
        x(80)=0;
    elseif (x(17)~=x(79))&&(x(79)==1)
        x(17)=1;
        x(18)=0;
        x(19)=0;
    end
    if (x(74)~=x(82))&&(x(74)==1)
        x(82)=1;
        x(81)=0;
        x(83)=0;
    elseif (x(74)~=x(82))&&(x(82)==1)
        x(74)=1;
        x(71)=0;
        x(72)=0;
        x(73)=0;
    end
    if (x(37)==x(61))&&(x(37)==1)
        x(61)=0;
        x(60)=round(rand(1));
        x(62)=1-x(60);
    elseif (x(37)==x(61))&&(x(37)==0)
        x(61)=1;
        x(60)=0;
        x(62)=0;
    end
    if (x(66)==x(84))&&(x(66)==1)
        x(84)=0;
        x(85)=round(rand(1));
        x(86)=1-x(85);
    elseif (x(66)==x(84))&&(x(66)==0)
        x(84)=1;
        x(85)=0;
        x(86)=0;
    end
    if (x(41)==x(51))&&(x(41)==1)
        x(51)=0;
        x(49)=round(rand(1));
        x(50)=1-x(49);
        x(52)=0;
        x(53)=0;
    elseif (x(41)==x(51))&&(x(41)==0)
        x(51)=1;
        x(49)=0;
        x(50)=0;
        x(52)=0;
        x(53)=0;
    end
    if (x(22)==x(68))&&(x(22)==1)
        x(68)=0;
        x(67)=round(rand(1));
        x(69)=1-x(67);
        x(70)=0;
    elseif (x(22)==x(68))&&(x(22)==0)
        x(68)=1;
        x(67)=0;
        x(69)=0;
        x(70)=0;
    end
    if (x(7)==x(89))&&(x(7)==1)
        x(89)=0;
        x(90)=1;
    elseif (x(7)==x(89))&&(x(7)==0)
        x(89)=1;
        x(90)=0;
    end
    x(end)=1;
%cost=[20;60;90;12;6;50;46;60;120;25;12;5;88;74;160;9.7;32;68;91.5;82;192;120;457;330;10;32;95;0;34;22;9.3;13;6;8;0;70;96;82;94;12;63;60;190;120;250;0;10;60;0];
%time=[4,5,7,2,3,5,4,5,8,2,1,1,4,5,8,2,3,3,5,6,8,9,2,3,4,0.0001,1,1,2,2,2,2,0.0001,22,17,18,5,2,3,1,3,2,1,0.0001,2,7,0];
%The first function 
F(i,1)=x*cost;
%The second function
nu=size(D,2);
rr=x.*time;
CC=rr(rr~=0)';
pp=repmat(CC,1,nu);
C=pp.*D;
%C=timehandle(x,A,m);
n1=size(C,2);
ST=zeros(1,n1);
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
  F(i,2)=ST(n1);
%The third function
%F(i,3)=-(x*Performance-26.5234)/(56.6129-26.5234);
F(i,3)=-x*Performance;
%F(i,3)=-(x*Performance);
end
