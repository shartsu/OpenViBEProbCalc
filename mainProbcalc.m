function mainProbCalc(directory)

HYBRID_PROB1_CSV         = dir(['./', directory, '/HYBRID_PROB1*.csv']);
HYBRID_PROB2_CSV         = dir(['./', directory, '/HYBRID_PROB2*.csv']);
HYBRID_PROB3_CSV         = dir(['./', directory, '/HYBRID_PROB3*.csv']);
HYBRID_PROB4_CSV         = dir(['./', directory, '/HYBRID_PROB4*.csv']);

P300_DS1_CSV         = dir(['./', directory, '/P300_DS1*.csv']);
P300_DS2_CSV         = dir(['./', directory, '/P300_DS2*.csv']);
P300_DS3_CSV         = dir(['./', directory, '/P300_DS3*.csv']);
P300_DS4_CSV         = dir(['./', directory, '/P300_DS4*.csv']);
P300_DSA_1_CSV         = dir(['./', directory, '/P300_DSA(1)*.csv']);
P300_DSA_2_CSV         = dir(['./', directory, '/P300_DSA(2)*.csv']);
P300_DSB_3_CSV         = dir(['./', directory, '/P300_DSB(3)*.csv']);
P300_DSB_4_CSV         = dir(['./', directory, '/P300_DSB(4)*.csv']);

P300_PROB1_CSV         = dir(['./', directory, '/P300_PROB1*.csv']);
P300_PROB2_CSV         = dir(['./', directory, '/P300_PROB2*.csv']);
P300_PROB3_CSV         = dir(['./', directory, '/P300_PROB3*.csv']);
P300_PROB4_CSV         = dir(['./', directory, '/P300_PROB4*.csv']);
P300_PROBA_1_CSV       = dir(['./', directory, '/P300_PROBA(1)*.csv']);
P300_PROBA_2_CSV       = dir(['./', directory, '/P300_PROBA(2)*.csv']);
P300_PROBB_3_CSV       = dir(['./', directory, '/P300_PROBB(3)*.csv']);
P300_PROBB_4_CSV       = dir(['./', directory, '/P300_PROBB(4)*.csv']);

SSVEP_DS1_CSV         = dir(['./', directory, '/SSVEP_DS1*.csv']);
SSVEP_DS2_CSV         = dir(['./', directory, '/SSVEP_DS2*.csv']);
SSVEP_DS3_CSV         = dir(['./', directory, '/SSVEP_DS3*.csv']);
SSVEP_DS4_CSV         = dir(['./', directory, '/SSVEP_DS4*.csv']);
SSVEP_DSA_1_CSV       = dir(['./', directory, '/SSVEP_DSA(1)*.csv']);
SSVEP_DSA_2_CSV       = dir(['./', directory, '/SSVEP_DSA(2)*.csv']);
SSVEP_DSB_3_CSV       = dir(['./', directory, '/SSVEP_DSB(3)*.csv']);
SSVEP_DSB_4_CSV       = dir(['./', directory, '/SSVEP_DSB(4)*.csv']);

SSVEP_PROB1_CSV         = dir(['./', directory, '/SSVEP_PROB1*.csv']);
SSVEP_PROB2_CSV         = dir(['./', directory, '/SSVEP_PROB2*.csv']);
SSVEP_PROB3_CSV         = dir(['./', directory, '/SSVEP_PROB3*.csv']);
SSVEP_PROB4_CSV     	= dir(['./', directory, '/SSVEP_PROB4*.csv']);
SSVEP_PROBA_1_CSV       = dir(['./', directory, '/SSVEP_PROBA(1)*.csv']);
SSVEP_PROBA_2_CSV     	= dir(['./', directory, '/SSVEP_PROBA(2)*.csv']);
SSVEP_PROBB_3_CSV       = dir(['./', directory, '/SSVEP_PROBB(3)*.csv']);
SSVEP_PROBB_4_CSV     	= dir(['./', directory, '/SSVEP_PROBB(4)*.csv']);

% === % === % === 

[HYBRID_PROB1]              = fileProcessor_Mini(directory, HYBRID_PROB1_CSV);
[HYBRID_PROB2]              = fileProcessor_Mini(directory, HYBRID_PROB2_CSV);
[HYBRID_PROB3]              = fileProcessor_Mini(directory, HYBRID_PROB3_CSV);
[HYBRID_PROB4]              = fileProcessor_Mini(directory, HYBRID_PROB4_CSV);

[P300_DS1]              = fileProcessor_Mini(directory, P300_DS1_CSV);
[P300_DS2]              = fileProcessor_Mini(directory, P300_DS2_CSV);
[P300_DS3]              = fileProcessor_Mini(directory, P300_DS3_CSV);
[P300_DS4]              = fileProcessor_Mini(directory, P300_DS4_CSV);
[P300_DSA_1]              = fileProcessor_Mini(directory, P300_DSA_1_CSV);
[P300_DSA_2]              = fileProcessor_Mini(directory, P300_DSA_2_CSV);
[P300_DSB_3]              = fileProcessor_Mini(directory, P300_DSB_3_CSV);
[P300_DSB_4]              = fileProcessor_Mini(directory, P300_DSB_4_CSV);

[P300_PROB1]              = fileProcessor_Mini(directory, P300_PROB1_CSV);
[P300_PROB2]              = fileProcessor_Mini(directory, P300_PROB2_CSV);
[P300_PROB3]              = fileProcessor_Mini(directory, P300_PROB3_CSV);
[P300_PROB4]              = fileProcessor_Mini(directory, P300_PROB4_CSV);
[P300_PROBA_1]              = fileProcessor_Mini(directory, P300_PROBA_1_CSV);
[P300_PROBA_2]              = fileProcessor_Mini(directory, P300_PROBA_2_CSV);
[P300_PROBB_3]              = fileProcessor_Mini(directory, P300_PROBB_3_CSV);
[P300_PROBB_4]              = fileProcessor_Mini(directory, P300_PROBB_4_CSV);

[SSVEP_DS1]              = fileProcessor_Mini(directory, SSVEP_DS1_CSV);
[SSVEP_DS2]              = fileProcessor_Mini(directory, SSVEP_DS2_CSV);
[SSVEP_DS3]              = fileProcessor_Mini(directory, SSVEP_DS3_CSV);
[SSVEP_DS4]              = fileProcessor_Mini(directory, SSVEP_DS4_CSV);
[SSVEP_DSA_1]              = fileProcessor_Mini(directory, SSVEP_DSA_1_CSV);
[SSVEP_DSA_2]              = fileProcessor_Mini(directory, SSVEP_DSA_2_CSV);
[SSVEP_DSB_3]              = fileProcessor_Mini(directory, SSVEP_DSB_3_CSV);
[SSVEP_DSB_4]              = fileProcessor_Mini(directory, SSVEP_DSB_4_CSV);

[SSVEP_PROB1]              = fileProcessor_Mini(directory, SSVEP_PROB1_CSV);
[SSVEP_PROB2]              = fileProcessor_Mini(directory, SSVEP_PROB2_CSV);
[SSVEP_PROB3]              = fileProcessor_Mini(directory, SSVEP_PROB3_CSV);
[SSVEP_PROB4]              = fileProcessor_Mini(directory, SSVEP_PROB4_CSV);
[SSVEP_PROBA_1]              = fileProcessor_Mini(directory, SSVEP_PROBA_1_CSV);
[SSVEP_PROBA_2]              = fileProcessor_Mini(directory, SSVEP_PROBA_2_CSV);
[SSVEP_PROBB_3]              = fileProcessor_Mini(directory, SSVEP_PROBB_3_CSV);
[SSVEP_PROBB_4]              = fileProcessor_Mini(directory, SSVEP_PROBB_4_CSV);

% === % === % === % === % === % === % === % === % === 

% DS Files ... Include discriminant scores
%
% ___________|_ Discriminant Score for TARGET _|_ for NonTARGET _|
% Duration 1 | x.xxxxxxxxxxxxx                 | ...             |
% Duration 2 | ...                             | ...             |
% Duration 3 | ...                             | ...             |
% Duration 4 | ...                             | ...             |

P300_DS1_Score = P300_DS1(:, 2:3);
P300_DS2_Score = P300_DS2(:, 2:3);
P300_DS3_Score = P300_DS3(:, 2:3);
P300_DS4_Score = P300_DS4(:, 2:3);
P300_DSA_1_Score = P300_DSA_1(:, 2:3);
P300_DSA_2_Score = P300_DSA_2(:, 2:3);
P300_DSB_3_Score = P300_DSB_3(:, 2:3);
P300_DSB_4_Score = P300_DSB_4(:, 2:3);

SSVEP_DS1_Score = SSVEP_DS1(:, 2:3);
SSVEP_DS2_Score = SSVEP_DS2(:, 2:3);
SSVEP_DS3_Score = SSVEP_DS3(:, 2:3);
SSVEP_DS4_Score = SSVEP_DS4(:, 2:3);
SSVEP_DSA_1_Score = SSVEP_DSA_1(:, 2:3);
SSVEP_DSA_2_Score = SSVEP_DSA_2(:, 2:3);
SSVEP_DSB_3_Score = SSVEP_DSB_3(:, 2:3);
SSVEP_DSB_4_Score = SSVEP_DSB_4(:, 2:3);

P300_4clsDS_Score = [P300_DS1_Score, P300_DS2_Score, P300_DS3_Score, P300_DS4_Score];
P300_2clsDS_Score = [P300_DSA_1_Score, P300_DSA_2_Score, P300_DSB_3_Score, P300_DSB_4_Score];

SSVEP_4clsDS_Score = [
    mean(SSVEP_DS1_Score(1:17, :)), mean(SSVEP_DS2_Score(1:17, :)), mean(SSVEP_DS3_Score(1:17, :)), mean(SSVEP_DS4_Score(1:17, :));
    mean(SSVEP_DS1_Score(18:34, :)), mean(SSVEP_DS2_Score(18:34, :)), mean(SSVEP_DS3_Score(18:34, :)), mean(SSVEP_DS4_Score(18:34, :));
    mean(SSVEP_DS1_Score(35:51, :)), mean(SSVEP_DS2_Score(35:51, :)), mean(SSVEP_DS3_Score(35:51, :)), mean(SSVEP_DS4_Score(35:51, :));
    mean(SSVEP_DS1_Score(52:68, :)), mean(SSVEP_DS2_Score(52:68, :)), mean(SSVEP_DS3_Score(52:68, :)), mean(SSVEP_DS4_Score(52:68, :));
    ];

SSVEP_2clsDS_Score = [
    mean(SSVEP_DSA_1_Score(1:17, :)), mean(SSVEP_DSA_2_Score(1:17, :)), mean(SSVEP_DSB_3_Score(1:17, :)), mean(SSVEP_DSB_4_Score(1:17, :));
    mean(SSVEP_DSA_1_Score(18:34, :)), mean(SSVEP_DSA_2_Score(18:34, :)), mean(SSVEP_DSB_3_Score(18:34, :)), mean(SSVEP_DSB_4_Score(18:34, :));
    mean(SSVEP_DSA_1_Score(35:51, :)), mean(SSVEP_DSA_2_Score(35:51, :)), mean(SSVEP_DSB_3_Score(35:51, :)), mean(SSVEP_DSB_4_Score(35:51, :));
    mean(SSVEP_DSA_1_Score(52:68, :)), mean(SSVEP_DSA_2_Score(52:68, :)), mean(SSVEP_DSB_3_Score(52:68, :)), mean(SSVEP_DSB_4_Score(52:68, :));

    ];

% === % === % === % === % === % === % === % === % === 
%
% DS Subtract (differencial) Files (TARGET - NonTARGET)
%
% ___________|_ Discriminant Score for TARGET - for NonTARGET _|
% Duration 1 | x.xxxxxxxxxxxxx                                 |
% Duration 2 | ...                                             |
% Duration 3 | ...                                             |
% Duration 4 | ...                                             |


DIF_P300_4clsDS_Score = [
    P300_4clsDS_Score(:, 1)-P300_4clsDS_Score(:, 2), P300_4clsDS_Score(:, 3)-P300_4clsDS_Score(:, 4),...
    P300_4clsDS_Score(:, 5)-P300_4clsDS_Score(:, 6), P300_4clsDS_Score(:, 7)-P300_4clsDS_Score(:, 8)
    ];

DIF_P300_2clsDS_Score = [
    P300_2clsDS_Score(:, 1)-P300_2clsDS_Score(:, 2), P300_2clsDS_Score(:, 3)-P300_2clsDS_Score(:, 4),...
    P300_2clsDS_Score(:, 5)-P300_2clsDS_Score(:, 6), P300_2clsDS_Score(:, 7)-P300_2clsDS_Score(:, 8)
    ];

DIF_SSVEP_4clsDS_Score = [
    SSVEP_4clsDS_Score(:, 1)-SSVEP_4clsDS_Score(:, 2), SSVEP_4clsDS_Score(:, 3)-SSVEP_4clsDS_Score(:, 4),...
    SSVEP_4clsDS_Score(:, 5)-SSVEP_4clsDS_Score(:, 6), SSVEP_4clsDS_Score(:, 7)-SSVEP_4clsDS_Score(:, 8)
    ];

DIF_SSVEP_2clsDS_Score = [
    SSVEP_2clsDS_Score(:, 1)-SSVEP_2clsDS_Score(:, 2), SSVEP_2clsDS_Score(:, 3)-SSVEP_2clsDS_Score(:, 4),...
    SSVEP_2clsDS_Score(:, 5)-SSVEP_2clsDS_Score(:, 6), SSVEP_2clsDS_Score(:, 7)-SSVEP_2clsDS_Score(:, 8)
    ];

DIF_P300_4clsDS_Score
DIF_P300_2clsDS_Score
DIF_SSVEP_4clsDS_Score
DIF_SSVEP_2clsDS_Score

% === % === % === % === % === % === % === % === % === 

% PROB Files ... Include probablity rate for eacls classes
%
% ___________|_ Probability Rate for TARGET _|_ for NonTARGET _|
% Duration 1 | x.xxxxxxxxxxxxx               | ...             |
% Duration 2 | ...                           | ...             |
% Duration 3 | ...                           | ...             |
% Duration 4 | ...                           | ...             |

P300_PROB1_Rate = P300_PROB1(:, 2:3);
P300_PROB2_Rate = P300_PROB2(:, 2:3);
P300_PROB3_Rate = P300_PROB3(:, 2:3);
P300_PROB4_Rate = P300_PROB4(:, 2:3);
P300_PROBA_1_Rate = P300_PROBA_1(:, 2:3);
P300_PROBA_2_Rate = P300_PROBA_2(:, 2:3);
P300_PROBB_3_Rate = P300_PROBB_3(:, 2:3);
P300_PROBB_4_Rate = P300_PROBB_4(:, 2:3);

SSVEP_PROB1_Rate = SSVEP_PROB1(:, 2:3);
SSVEP_PROB2_Rate = SSVEP_PROB2(:, 2:3);
SSVEP_PROB3_Rate = SSVEP_PROB3(:, 2:3);
SSVEP_PROB4_Rate = SSVEP_PROB4(:, 2:3);
SSVEP_PROBA_1_Rate = SSVEP_PROBA_1(:, 2:3);
SSVEP_PROBA_2_Rate = SSVEP_PROBA_2(:, 2:3);
SSVEP_PROBB_3_Rate = SSVEP_PROBB_3(:, 2:3);
SSVEP_PROBB_4_Rate = SSVEP_PROBB_4(:, 2:3);

HYBRID_PROB1_Rate = HYBRID_PROB1(:, 2:3);
HYBRID_PROB2_Rate = HYBRID_PROB2(:, 2:3);
HYBRID_PROB3_Rate = HYBRID_PROB3(:, 2:3);
HYBRID_PROB4_Rate = HYBRID_PROB4(:, 2:3);

P300_4clsPROB_Rate = [P300_PROB1_Rate(:, 1), P300_PROB2_Rate(:, 1), P300_PROB3_Rate(:, 1), P300_PROB4_Rate(:, 1)];
P300_2clsPROB_Rate = [P300_PROBA_1_Rate(:, 1), P300_PROBA_2_Rate(:, 1), P300_PROBB_3_Rate(:, 1), P300_PROBB_4_Rate(:, 1)];

SSVEP_4clsPROB_Rate = [SSVEP_PROB1_Rate(:, 1), SSVEP_PROB2_Rate(:, 1), SSVEP_PROB3_Rate(:, 1), SSVEP_PROB4_Rate(:, 1)];
SSVEP_2clsPROB_Rate = [SSVEP_PROBA_1_Rate(:, 1), SSVEP_PROBA_2_Rate(:, 1), SSVEP_PROBB_3_Rate(:, 1), SSVEP_PROBB_4_Rate(:, 1)];

HYBRID_AllPROB_Rate = [HYBRID_PROB1_Rate(:, 1), HYBRID_PROB2_Rate(:, 1), HYBRID_PROB3_Rate(:, 1), HYBRID_PROB4_Rate(:, 1)];

% === % === % === % === % === % === % === % === % === 

% Debug

%P300_4clsDS_Score
%P300_2clsDS_Score
%SSVEP_4clsDS_Score
%SSVEP_2clsDS_Score

% === % === % === % === % === % === % === % === % === 

% Decision

for j = 1:4
    for i = 1:4
        Decision(j, i) = (P300_4clsPROB_Rate(j, i) * P300_2clsPROB_Rate(j, i) + ...
            SSVEP_4clsPROB_Rate(j, i) * SSVEP_2clsPROB_Rate(j, i))/2;
    end
end

% === % === % === % === % === % === % === % === % === 

% Probability Calclation
figure
for i = 1:4
    ProbAll = vertcat(P300_4clsPROB_Rate(i,:), P300_2clsPROB_Rate(i,:),...
        SSVEP_4clsPROB_Rate(i,:), SSVEP_2clsPROB_Rate(i,:), HYBRID_AllPROB_Rate(i,:), Decision(i,:));
    
    p(i) = subplot(4,2,1+2*(i-1));
    DepictMatrix(ProbAll, {'Target1','Target2','Target3','Target4'}, ...
        {'P300Prob-4cls', 'P300Prob-2cls', 'SSVEPProb-4cls', 'SSVEPProb-2cls', 'HYBRIDProb-4cls', 'Decision'})
end

title(p(1), 'Probability Duration 1')
title(p(2), 'Probability Duration 2')
title(p(3), 'Probability Duration 3')
title(p(4), 'Probability Duration 4')

% === % === % === % === % === % === % === % === % === 

% Discriminant Score Calclation

%figure
for i = 1:4
    DSAll = vertcat(DIF_P300_4clsDS_Score(i,:), DIF_P300_2clsDS_Score(i,:), DIF_SSVEP_4clsDS_Score(i,:), DIF_SSVEP_2clsDS_Score(i,:));
    
    d(i) = subplot(4,2,2*i);
    DepictMatrix(DSAll, {'Target1','Target2','Target3','Target4'}, ...
        {'P300DS-4cls', 'P300DS-2cls', 'SSVEPDS-4cls', 'SSVEPDS-2cls'})
end

title(d(1), 'Discriminant Score Duration 1')
title(d(2), 'Discriminant Score Duration 2')
title(d(3), 'Discriminant Score Duration 3')
title(d(4), 'Discriminant Score Duration 4')

filename_DS = strcat(directory, '/_ResultTable-SSVEP&P300LDA.png');
set(gcf,'Position', [0 0 1920 1080], 'PaperPositionMode', 'auto')
print(filename_DS,'-dpng','-r0')

end

function [AllData] = fileProcessor_Mini(directory, File_dir_struct)
   
    AllData = [];
    File_dir_struct.name
    
    for i = 1:length(File_dir_struct)
        allData_struct = importdata(strcat('./', directory, '/', File_dir_struct(i).name));
        AllData = vertcat(AllData, allData_struct.data);
    end
    
end
