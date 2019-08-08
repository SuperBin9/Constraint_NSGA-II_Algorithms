function F=fitness(X) 
Index=[2,6,9,11,13,16,19,22,24,27,30,35,40,42,46,50,55,59,63,67,70,74,78,81,86,90,95,98,102];
D=[0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0;0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;...
   0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0;0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0;0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,1,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];
time=[10,10,9,4,6,7,6,6,5,10,3,8,0.000100000000000000,10,1,7,7,6,0.000100000000000000,1,3,9,3,2,5,6,8,9,4,10,1,5,3,4,5,6,...
    5,3,3,3,8,5,7,6,5,8,7,4,11,3,2,7,6,3,2,6,4,2,6,7,1,6,0.000100000000000000,9,9,4,2,10,6,2,2,9,6,4,7,4,9,6,11,6,10,3,6,...
    6,9,0.000100000000000000,9,9,5,1,9,8,10,7,0.000100000000000000,4,4,8,8,8,10,8,0];
cost=[71;86;68;37;85;32;73;58;44;26;90;17;0;72;52;70;35;88;0;62;52;71;53;96;87;91;12;24;53;76;42;61;14;68;71;46;22;47;76;...
    63;90;62;26;63;15;77;28;91;53;50;22;83;93;73;70;74;77;74;23;70;92;13;0;79;14;35;87;43;91;36;44;20;83;94;26;38;71;17;...
    13;39;45;59;60;40;48;0;28;80;23;51;21;83;86;20;0;93;45;80;93;10;35;13;0];
Performance=[0.995958774384909;0.0560392316578245;0.244497666697159;3.24671303259852;1.44361767272887;4.22205116803530;...
             1.66648434136233;4.60653497450281;0.656933485202361;2.74502494133547;1.47217250686408;4.03076600919570;0;...
             0.605147003276150;2.27798768190096;1.24940833223416;3.72616552274197;3.67960023493710;0;0.0149598477645985;...
             4.59003208858375;1.61437530412699;1.48189522797699;1.35463070066811;1.22861972183052;3.87684655448912;...
             1.31619239972809;3.59493556972158;3.36644388001950;2.75266897418288;3.41386513093006;0.870164625500134;...
             2.32259034816699;2.46979455463898;0.137056341160554;1.09119169120465;4.66704409891193;3.29322143707965;...
             4.89331245122196;1.84657020930653;3.81195189800922;2.99832579904976;3.01046196464533;0.566538205510570;...
             1.11100392591644;0.361312618174620;2.52651402606291;1.72549586860865;0.983602733369333;1.87348583455731;...
             2.63203361392989;3.55413466585366;2.94985666987726;3.19545496461648;3.01880955558140;1.86787451975884;...
             1.62777154116450;2.80571045173106;3.74831749308020;4.59595413855359;4.13834582801857;2.76863681020225;...
             0;0.141160267219331;3.98760577126600;0.997443525763745;3.42920479709216;4.12594878265118;1.57481540357516;...
             1.99873701741432;4.92794448978315;1.26782345313366;3.77669661986807;2.03029787819147;1.57614967981894;...
             3.85257961053605;2.24930288398326;3.55042983052921;1.11100219700618;4.11918456171964;3.58387058910552;...
             2.49620661343732;3.95775505023091;4.59852658263338;3.93694460633468;0;3.58667532559906;3.07528398888500;...
             4.20661511174386;2.02283986269226;2.26680674950127;0.468822922501345;1.09321827718999;2.64671245545907;...
             0;3.56538224861937;1.43196263221348;0.580359155566069;0.936258077493586;2.16859554256028;0.927711863428371;...
             0.617328841261508;0];
m=Index(end);
for i = 1:size(X,1)
    idx = floor(X(i,:));
x = zeros(1,m+1);
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
