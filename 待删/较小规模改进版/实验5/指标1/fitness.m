function F=fitness(X) 
Index=[3,8,11,16,19,23,27,31,34,37,39,43,46,48,53,56,59,62,66,70,74,77,80,83,86,88,90,95,100];
D=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0;...
   0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0;0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0;0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
   0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];
time=[3,8,0.000100000000000000,1,7,1,6,7,11,4,9,10,10,1,6,11,5,9,6,9,6,1,2,2,4,11,7,9,7,7,9,10,10,9,2,5,1,6,9,2,3,5,3,9,5,...
      7,6,7,10,10,2,9,4,2,5,6,11,5,1,10,2,6,9,6,5,9,1,7,5,11,9,2,3,6,8,4,5,10,11,5,10,4,2,6,8,10,11,9,9,8,8,9,11,5,2,3,3,...
      5,9,2,0];
cost=[50;83;0;16;32;18;83;25;28;83;83;63;92;15;97;61;37;84;69;99;20;62;53;69;32;13;59;43;90;51;48;67;57;97;81;55;29;64;...
      77;78;99;30;48;48;39;43;53;59;34;22;37;22;39;71;64;100;60;59;68;75;65;63;64;42;80;64;38;32;16;41;11;25;15;35;41;...
      63;80;66;24;90;76;55;68;56;25;68;99;79;26;21;94;92;77;78;23;83;27;24;47;10;0];
Performance=[4.22758908081905;0.805662266719703;0;2.91455407961707;3.85130001485731;2.99996583368843;4.80733742923086;...
             1.89889194709109;2.48505175037528;1.69169324486432;3.71375370758766;1.50247934886720;3.99393137283334;...
             0.429748896649042;1.17831818832586;2.19084446303080;0.630229265643673;1.01515990393908;4.20771370931568;...
             1.86216227458243;1.09340864728828;4.23066411225383;2.87687332529576;3.16858238645335;4.44464271838058;...
             3.56979529484109;1.32556334125573;0.0485415416657431;2.74731729764495;3.53763112645998;4.02847304820012;...
             0.953281670991461;3.17107138012318;4.69276467054695;1.29093192122656;1.46240229815384;2.12822006019613;...
             2.85589300797865;4.95027776661535;2.94099806352312;4.43949698481487;3.28105639522032;2.36389437055003;...
             1.52774264863253;1.75089789048348;3.88567146123615;0.887545236600568;0.689676791980562;1.06522482147226;...
             3.34456720071076;1.85702473507723;1.03251339291415;1.65352201604001;0.408147812075693;2.18267776734886;...
             4.05607991266598;2.22896230595345;2.23655076996630;0.137642317388480;1.39488836037173;0.375852499433212;...
             0.238691885567996;4.31792789925555;3.57158795156081;4.15218850188121;0.664528981970978;1.82643229772514;...
             4.56608771157909;2.16693945493803;4.62825906541839;4.80684038065725;0.0330405399478728;2.16465292756690;...
             2.91556314421794;1.74413786111548;1.88016008952398;1.77910788078899;1.15516437586506;0.130186222131797;...
             3.65591999934121;4.99257883631417;0.191709650800123;4.29549108476526;2.72152465485227;0.0975997941159162;...
             0.344082042868279;2.62724740538745;0.522801032210663;1.47998713830129;1.37417202005902;4.85302853780881;...
             2.34833242469085;1.42590532135237;4.69121046671076;4.83363334418240;3.59699941417936;0.684395161604412;...
             4.44949492721473;2.20630146777349;3.93063689098531;0];
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
