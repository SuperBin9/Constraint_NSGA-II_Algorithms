function [opt] = nsga2_basic_parameters(opt)
    
    
    %-----OPTIMIZATION ALGORITHM PARAMETERS-------------------------------
    opt.Index=[3,7,9,12,14,16,19,22,25,29,32,36,39,44,46,50,53,57,59,62,66,71,74,78,83,88,90,92,95];
    opt.time=[4,8,9,1,9,11,8,4,0.000100000000000000,2,5,10,4,4,2,1,8,3,4,6,2,7,2,7,8,2,5,8,5,1,6,8,...
        6,10,7,0.000100000000000000,2,2,9,5,3,10,4,0.000100000000000000,8,10,7,9,4,4,10,5,11,8,...
        7,2,0.000100000000000000,5,7,5,3,10,7,1,7,4,6,10,5,10,7,1,10,8,11,3,2,10,8,2,9,9,10,8,2,...
        1,1,0.000100000000000000,3,10,6,7,9,2,4,0];
    opt.cost=[63;97;60;12;82;31;83;45;0;77;60;22;15;21;14;20;30;74;60;11;16;97;61;28;33;77;28;62;97;86;...
        32;54;66;85;24;0;16;54;65;61;39;99;62;0;60;77;70;34;16;43;67;29;78;16;33;82;0;68;57;93;34;...
        16;76;79;92;94;11;31;66;95;96;60;92;68;45;54;64;59;93;93;46;97;26;21;22;56;12;0;84;11;26;40;22;83;41;0];
    opt.D=[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,1,0,0,0;...
        0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,1,1,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,1,0,1,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,1,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;...
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1];
    opt.Performance=[4.70053741166684;2.91007089973540;4.39415992205922;...
        4.22367222696111;4.52696159354325;2.29940132908403;...
        2.73173408010187;3.99301795576020;0;2.45126761309964;...
        2.99555153822939;0.0776663777541786;2.96740704098319;...
        2.16838174494729;4.03680264442421;1.57622401547686;...
        4.46444354262576;2.88928607642268;0.920051008137325;...
        3.93964616912752;3.06015588522467;0.269546360368765;...
        2.10096840000566;3.39534418282715;4.59300888988763;...
        0.00201012445678717;4.88379574515530;1.88290157372887;...
        4.86891769179161;3.02358050487027;4.14422903990347;...
        2.87355752354051;3.14038099153675;1.42788140847847;...
        2.93416670328041;0;4.29156918214521;3.77541094233840;...
        3.49028624223652;4.32239715027300;1.61340498418373;...
        3.35394395393794;2.25436968206675;0;2.05405674961093;...
        2.00739791734770;1.58691972979138;3.10959683960151;...
        2.15123635410632;4.86901038963626;3.38900445717156;...
        0.992849442135554;2.13350504674016;1.71673119887212;...
        3.98819401979283;4.39999144281716;0;3.31359906187631;...
        1.35104131014879;1.26183350752295;4.27448971348701;...
        2.63857323154373;4.01080542002299;2.86244258595803;...
        3.66571262643756;2.59505813732028;3.85441955250944;...
        2.84428995352358;2.32854939295990;1.71344453976641;...
        0.341046742083521;1.88962089664050;0.398130388491262;...
        4.91408556865223;0.908064256653819;4.05929348860270;...
        4.37480822477949;3.44206626192972;2.84747206372688;...
        0.804857184078044;2.33440011381653;1.72586025577608;...
        1.12519978907042;2.96255934382898;1.56134918850958;...
        4.58152776734175;4.54817762475779;0;0.554456503720146;...
        0.964813660095564;2.49792085339443;3.64292833987298;...
        1.04097219204396;1.24016779188615;4.25835937468183;0];
    opt.BaseV=[3,4,2,3,2,2,3,3,3,4,3,4,3,5,2,4,3,4,2,3,4,5,3,4,5,5,2,2,3];
    opt.temp=[0,3,7,9,12,14,16,19,22,25,29,32,36,39,44,46,50,53,57,59,62,66,71,74,78,83,88,90,92];
    %opt.G  = 1000;% Generations
    opt.G  = [];
    opt.N = 300;%population size in optimization algorithm
    opt.gen = 1;%starting generation
    opt.pop = [];%initial population
    opt.popObj = [];
    opt.Epsilon = 1e-14;%numerical difference
    opt.Inf = 1e14;%maximum value
           
    opt.crossoverOption = 1;% 1 = simulated binary crossover
    opt.mutationOption = 1;% 1 = polynomial mutation
    opt.matingselectionOption = 1;%1 = binary constraint tournament selection
    opt.survivalselectionOption = 1;%1 = NSGA-II
    
    %filename where data will be saved
    opt.varfilename = strcat(opt.objfunction,'_var_1','.txt');%save variables
    opt.objfilename = strcat(opt.objfunction,'_obj_1','.txt');%save objective
    opt.cvfilename  = strcat(opt.objfunction,'_cv_1','.txt');%constraint violation
    
    
    %-----OBJECTIVE FUNCTION PARAMETERS------------------------------------
    %problem = lower(opt.objfunction);
    opt.M = 3;                                                             % 目标函数的个数
    opt.V = 29;                                                            % 决策变量的个数
    opt.C = 2;                                                             % 约束条件
    opt.px=0.9;                                                            % 交叉概率
    opt.pm=0.1;                                                            % 变异概率
    %opt.trace=cell(opt.G,1);
    opt.trace=cell(2000,1);% 修改过
    
    opt.tracepop=[]; 
    opt.tracepopObj=[];
    opt.Chromosome=[];
    opt.trace_1=[];
    %---------------------交叉概率和变异概率对Spcing的影响-------------------
    opt.N1=1;
    opt.N2=1;
    opt.iter=1;
    %---------------------REFERENCE----------------------------------------
    %initialization  
    opt.CD = zeros(opt.N,1);%initial crowding distance
    opt.PR = zeros(opt.N,1);%initial pagerank for PR
    opt.Color = {'k','b','r','g','y',[.5 .6 .7],[.8 .2 .6]}; %Colors.
end

%------------------------------END OF -FILE--------------------------------