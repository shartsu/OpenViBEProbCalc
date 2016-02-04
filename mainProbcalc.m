function mainProbCalc(directory)

HYBRID_PROB1_CSV         = dir(['./', directory, '/HYBRID_PROB1*.csv']);
HYBRID_PROB2_CSV         = dir(['./', directory, '/HYBRID_PROB2*.csv']);
HYBRID_PROB3_CSV         = dir(['./', directory, '/HYBRID_PROB3*.csv']);
HYBRID_PROB4_CSV         = dir(['./', directory, '/HYBRID_PROB4*.csv']);

P300_DS1_CSV         = dir(['./', directory, '/P300_DS1*.csv']);
P300_DS2_CSV         = dir(['./', directory, '/P300_DS2*.csv']);
P300_DS3_CSV         = dir(['./', directory, '/P300_DS3*.csv']);
P300_DS4_CSV         = dir(['./', directory, '/P300_DS4*.csv']);
P300_DSA_CSV         = dir(['./', directory, '/P300_DSA*.csv']);
P300_DSB_CSV         = dir(['./', directory, '/P300_DSB*.csv']);

P300_PROB1_CSV         = dir(['./', directory, '/P300_PROB1*.csv']);
P300_PROB2_CSV         = dir(['./', directory, '/P300_PROB2*.csv']);
P300_PROB3_CSV         = dir(['./', directory, '/P300_PROB3*.csv']);
P300_PROB4_CSV         = dir(['./', directory, '/P300_PROB4*.csv']);
P300_PROBA_CSV         = dir(['./', directory, '/P300_PROBA*.csv']);
P300_PROBB_CSV         = dir(['./', directory, '/P300_PROBB*.csv']);

SSVEP_DS1_CSV         = dir(['./', directory, '/SSVEP_DS1*.csv']);
SSVEP_DS2_CSV         = dir(['./', directory, '/SSVEP_DS2*.csv']);
SSVEP_DS3_CSV         = dir(['./', directory, '/SSVEP_DS3*.csv']);
SSVEP_DS4_CSV         = dir(['./', directory, '/SSVEP_DS4*.csv']);
SSVEP_DSA_CSV         = dir(['./', directory, '/SSVEP_DSA*.csv']);
SSVEP_DSB_CSV         = dir(['./', directory, '/SSVEP_DSB*.csv']);

SSVEP_PROB1_CSV         = dir(['./', directory, '/SSVEP_PROB1*.csv']);
SSVEP_PROB2_CSV         = dir(['./', directory, '/SSVEP_PROB2*.csv']);
SSVEP_PROB3_CSV         = dir(['./', directory, '/SSVEP_PROB3*.csv']);
SSVEP_PROB4_CSV     	= dir(['./', directory, '/SSVEP_PROB4*.csv']);
SSVEP_PROBA_CSV         = dir(['./', directory, '/SSVEP_PROBA*.csv']);
SSVEP_PROBB_CSV     	= dir(['./', directory, '/SSVEP_PROBB*.csv']);


% === % === % === 

[HYBRID_PROB1]              = fileProcessor_Mini(directory, HYBRID_PROB1_CSV);
[HYBRID_PROB2]              = fileProcessor_Mini(directory, HYBRID_PROB2_CSV);
[HYBRID_PROB3]              = fileProcessor_Mini(directory, HYBRID_PROB3_CSV);
[HYBRID_PROB4]              = fileProcessor_Mini(directory, HYBRID_PROB4_CSV);

[P300_DS1]              = fileProcessor_Mini(directory, P300_DS1_CSV);
[P300_DS2]              = fileProcessor_Mini(directory, P300_DS2_CSV);
[P300_DS3]              = fileProcessor_Mini(directory, P300_DS3_CSV);
[P300_DS4]              = fileProcessor_Mini(directory, P300_DS4_CSV);
[P300_DSA]              = fileProcessor_Mini(directory, P300_DSA_CSV);
[P300_DSB]              = fileProcessor_Mini(directory, P300_DSB_CSV);

[P300_PROB1]              = fileProcessor_Mini(directory, P300_PROB1_CSV);
[P300_PROB2]              = fileProcessor_Mini(directory, P300_PROB2_CSV);
[P300_PROB3]              = fileProcessor_Mini(directory, P300_PROB3_CSV);
[P300_PROB4]              = fileProcessor_Mini(directory, P300_PROB4_CSV);
[P300_PROBA]              = fileProcessor_Mini(directory, P300_PROBA_CSV);
[P300_PROBB]              = fileProcessor_Mini(directory, P300_PROBB_CSV);

[SSVEP_DS1]              = fileProcessor_Mini(directory, SSVEP_DS1_CSV);
[SSVEP_DS2]              = fileProcessor_Mini(directory, SSVEP_DS2_CSV);
[SSVEP_DS3]              = fileProcessor_Mini(directory, SSVEP_DS3_CSV);
[SSVEP_DS4]              = fileProcessor_Mini(directory, SSVEP_DS4_CSV);
[SSVEP_DSA]              = fileProcessor_Mini(directory, SSVEP_DSA_CSV);
[SSVEP_DSB]              = fileProcessor_Mini(directory, SSVEP_DSB_CSV);

[SSVEP_PROB1]              = fileProcessor_Mini(directory, SSVEP_PROB1_CSV);
[SSVEP_PROB2]              = fileProcessor_Mini(directory, SSVEP_PROB2_CSV);
[SSVEP_PROB3]              = fileProcessor_Mini(directory, SSVEP_PROB3_CSV);
[SSVEP_PROB4]              = fileProcessor_Mini(directory, SSVEP_PROB4_CSV);
[SSVEP_PROBA]              = fileProcessor_Mini(directory, SSVEP_PROBA_CSV);
[SSVEP_PROBB]              = fileProcessor_Mini(directory, SSVEP_PROBB_CSV);

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
P300_DSA_Score = P300_DS4(:, 2:3);
P300_DSB_Score = P300_DS4(:, 2:3);

SSVEP_DS1_Score = SSVEP_DS1(:, 2:3);
SSVEP_DS2_Score = SSVEP_DS2(:, 2:3);
SSVEP_DS3_Score = SSVEP_DS3(:, 2:3);
SSVEP_DS4_Score = SSVEP_DS4(:, 2:3);
SSVEP_DSA_Score = SSVEP_DS3(:, 2:3);
SSVEP_DSB_Score = SSVEP_DS4(:, 2:3);

P300_4clsDS_Score = [P300_DS1_Score(:, 1), P300_DS2_Score(:, 1), P300_DS3_Score(:, 1), P300_DS4_Score(:, 1)];
P300_2clsDS_Score = [P300_DSA_Score(:, 1), P300_DSB_Score(:, 1)];

SSVEP_4clsDS_Score = [
    mean(SSVEP_DS1_Score(1:17, 1)), mean(SSVEP_DS2_Score(1:17, 1)), mean(SSVEP_DS3_Score(1:17, 1)), mean(SSVEP_DS4_Score(1:17, 1));
    mean(SSVEP_DS1_Score(18:34, 1)), mean(SSVEP_DS2_Score(18:34, 1)), mean(SSVEP_DS3_Score(18:34, 1)), mean(SSVEP_DS4_Score(18:34, 1));
    mean(SSVEP_DS1_Score(35:51, 1)), mean(SSVEP_DS2_Score(35:51, 1)), mean(SSVEP_DS3_Score(35:51, 1)), mean(SSVEP_DS4_Score(35:51, 1));
    mean(SSVEP_DS1_Score(52:68, 1)), mean(SSVEP_DS2_Score(52:68, 1)), mean(SSVEP_DS3_Score(52:68, 1)), mean(SSVEP_DS4_Score(52:68, 1));
    ];

SSVEP_2clsDS_Score = [
    mean(SSVEP_DSA_Score(1:17, 1)), mean(SSVEP_DSB_Score(1:17, 1));
    mean(SSVEP_DSA_Score(18:34, 1)), mean(SSVEP_DSB_Score(18:34, 1));
    mean(SSVEP_DSA_Score(35:51, 1)), mean(SSVEP_DSB_Score(35:51, 1));
    mean(SSVEP_DSA_Score(52:68, 1)), mean(SSVEP_DSB_Score(52:68, 1));
    ];

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
P300_PROBA_Rate = P300_PROBA(:, 2:3);
P300_PROBB_Rate = P300_PROBB(:, 2:3);

SSVEP_PROB1_Rate = SSVEP_PROB1(:, 2:3);
SSVEP_PROB2_Rate = SSVEP_PROB2(:, 2:3);
SSVEP_PROB3_Rate = SSVEP_PROB3(:, 2:3);
SSVEP_PROB4_Rate = SSVEP_PROB4(:, 2:3);
SSVEP_PROBA_Rate = SSVEP_PROBA(:, 2:3);
SSVEP_PROBB_Rate = SSVEP_PROBB(:, 2:3);

HYBRID_PROB1_Rate = HYBRID_PROB1(:, 2:3);
HYBRID_PROB2_Rate = HYBRID_PROB2(:, 2:3);
HYBRID_PROB3_Rate = HYBRID_PROB3(:, 2:3);
HYBRID_PROB4_Rate = HYBRID_PROB4(:, 2:3);

P300_4clsPROB_Rate = [P300_PROB1_Rate(:, 1), P300_PROB2_Rate(:, 1), P300_PROB3_Rate(:, 1), P300_PROB4_Rate(:, 1)];
P300_2clsPROB_Rate = [P300_PROBA_Rate(:, 1), P300_PROBA_Rate(:, 1), P300_PROBB_Rate(:, 1), P300_PROBB_Rate(:, 1)];

SSVEP_4clsPROB_Rate = [SSVEP_PROB1_Rate(:, 1), SSVEP_PROB2_Rate(:, 1), SSVEP_PROB3_Rate(:, 1), SSVEP_PROB4_Rate(:, 1)];
SSVEP_2clsPROB_Rate = [SSVEP_PROBA_Rate(:, 1), SSVEP_PROBB_Rate(:, 1), SSVEP_PROBA_Rate(:, 1), SSVEP_PROBB_Rate(:, 1)];

HYBRID_AllPROB_Rate = [HYBRID_PROB1_Rate(:, 1), HYBRID_PROB2_Rate(:, 1), HYBRID_PROB3_Rate(:, 1), HYBRID_PROB4_Rate(:, 1)];

% === % === % === % === % === % === % === % === % === 

% Debug

P300_4clsDS_Score
P300_2clsDS_Score
SSVEP_4clsDS_Score
SSVEP_2clsDS_Score

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
    tmp = vertcat(P300_4clsPROB_Rate(i,:), P300_2clsPROB_Rate(i,:),...
        SSVEP_4clsPROB_Rate(i,:), SSVEP_2clsPROB_Rate(i,:), HYBRID_AllPROB_Rate(i,:), Decision(i,:));
    
    s(i) = subplot(2,2,i);
    DepictMatrix(tmp, {'Target1','Target2','Target3','Target4'}, ...
        {'P300Prob-4cls', 'P300Prob-2cls', 'SSVEPProb-4cls', 'SSVEPProb-2cls', 'HYBRIDProb-4cls', 'Decision'})
end

title(s(1), 'Duration 1')
title(s(2), 'Duration 2')
title(s(3), 'Duration 3')
title(s(4), 'Duration 4')

filename = strcat(directory, '/ProbCalc-SSVEP&P300LDA.png');
saveas(gcf,filename)

end

function [AllData] = fileProcessor_Mini(directory, File_dir_struct)
   
    AllData = [];
    File_dir_struct.name
    
    for i = 1:length(File_dir_struct)
        allData_struct = importdata(strcat('./', directory, '/', File_dir_struct(i).name));
        AllData = vertcat(AllData, allData_struct.data);
    end
    
end
