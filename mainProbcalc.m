function mainProbcalc(directory)

HYBRID_PROB1_CSV         = dir(['./', directory, '/MIXED_PROB1*.csv']);
HYBRID_PROB2_CSV         = dir(['./', directory, '/MIXED_PROB2*.csv']);
HYBRID_PROB3_CSV         = dir(['./', directory, '/MIXED_PROB3*.csv']);
HYBRID_PROB4_CSV         = dir(['./', directory, '/MIXED_PROB4*.csv']);

P300_CLSP1_CSV         = dir(['./', directory, '/P300_CLSP1*.csv']);
P300_CLSP2_CSV         = dir(['./', directory, '/P300_CLSP2*.csv']);
P300_CLSP3_CSV         = dir(['./', directory, '/P300_CLSP3*.csv']);
P300_CLSP4_CSV         = dir(['./', directory, '/P300_CLSP4*.csv']);

P300_PROB1_CSV         = dir(['./', directory, '/P300_PROB1*.csv']);
P300_PROB2_CSV         = dir(['./', directory, '/P300_PROB2*.csv']);
P300_PROB3_CSV         = dir(['./', directory, '/P300_PROB3*.csv']);
P300_PROB4_CSV         = dir(['./', directory, '/P300_PROB4*.csv']);

SSVEP_CLSP1_CSV         = dir(['./', directory, '/SSVEP_CLSP1*.csv']);
SSVEP_CLSP2_CSV         = dir(['./', directory, '/SSVEP_CLSP2*.csv']);
SSVEP_CLSP3_CSV         = dir(['./', directory, '/SSVEP_CLSP3*.csv']);
SSVEP_CLSP4_CSV     	= dir(['./', directory, '/SSVEP_CLSP4*.csv']);

SSVEP_PROB1_CSV         = dir(['./', directory, '/SSVEP_PROB1*.csv']);
SSVEP_PROB2_CSV         = dir(['./', directory, '/SSVEP_PROB2*.csv']);
SSVEP_PROB3_CSV         = dir(['./', directory, '/SSVEP_PROB3*.csv']);
SSVEP_PROB4_CSV     	= dir(['./', directory, '/SSVEP_PROB4*.csv']);

% === % === % === 

[HYBRID_PROB1]              = fileProcessor_Mini(directory, HYBRID_PROB1_CSV);
[HYBRID_PROB2]              = fileProcessor_Mini(directory, HYBRID_PROB2_CSV);
[HYBRID_PROB3]              = fileProcessor_Mini(directory, HYBRID_PROB3_CSV);
[HYBRID_PROB4]              = fileProcessor_Mini(directory, HYBRID_PROB4_CSV);

[P300_CLSP1]              = fileProcessor_Mini(directory, P300_CLSP1_CSV);
[P300_CLSP2]              = fileProcessor_Mini(directory, P300_CLSP2_CSV);
[P300_CLSP3]              = fileProcessor_Mini(directory, P300_CLSP3_CSV);
[P300_CLSP4]              = fileProcessor_Mini(directory, P300_CLSP4_CSV);

[P300_PROB1]              = fileProcessor_Mini(directory, P300_PROB1_CSV);
[P300_PROB2]              = fileProcessor_Mini(directory, P300_PROB2_CSV);
[P300_PROB3]              = fileProcessor_Mini(directory, P300_PROB3_CSV);
[P300_PROB4]              = fileProcessor_Mini(directory, P300_PROB4_CSV);

[SSVEP_CLSP1]              = fileProcessor_Mini(directory, SSVEP_CLSP1_CSV);
[SSVEP_CLSP2]              = fileProcessor_Mini(directory, SSVEP_CLSP2_CSV);
[SSVEP_CLSP3]              = fileProcessor_Mini(directory, SSVEP_CLSP3_CSV);
[SSVEP_CLSP4]              = fileProcessor_Mini(directory, SSVEP_CLSP4_CSV);

[SSVEP_PROB1]              = fileProcessor_Mini(directory, SSVEP_PROB1_CSV);
[SSVEP_PROB2]              = fileProcessor_Mini(directory, SSVEP_PROB2_CSV);
[SSVEP_PROB3]              = fileProcessor_Mini(directory, SSVEP_PROB3_CSV);
[SSVEP_PROB4]              = fileProcessor_Mini(directory, SSVEP_PROB4_CSV);

% === % === % === 
% CLSP Files ... Include discriminant scores
%
% ___________|_ Discriminant Score for TARGET _|_ for NonTARGET _|
% Duration 1 | x.xxxxxxxxxxxxx                 | ...             |
% Duration 2 | ...                             | ...             |
% Duration 3 | ...                             | ...             |
% Duration 4 | ...                             | ...             |

P300_CLSP1_Score = P300_CLSP1(:, 2:3);
P300_CLSP2_Score = P300_CLSP2(:, 2:3);
P300_CLSP3_Score = P300_CLSP3(:, 2:3);
P300_CLSP4_Score = P300_CLSP4(:, 2:3);

SSVEP_CLSP1_Score = SSVEP_CLSP1(:, 2:3);
SSVEP_CLSP2_Score = SSVEP_CLSP2(:, 2:3);
SSVEP_CLSP3_Score = SSVEP_CLSP3(:, 2:3);
SSVEP_CLSP4_Score = SSVEP_CLSP4(:, 2:3);

% === % === % === 
% PROB Files ... Include probablity rate for each classes
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

SSVEP_PROB1_Rate = SSVEP_PROB1(:, 2:3);
SSVEP_PROB2_Rate = SSVEP_PROB2(:, 2:3);
SSVEP_PROB3_Rate = SSVEP_PROB3(:, 2:3);
SSVEP_PROB4_Rate = SSVEP_PROB4(:, 2:3);

% === % === % === 

figure
subplot(2,2,1)
plotCLSP_4Vector('Hybrid-Duration1', 1, HYBRID_CLSP1_Vector, HYBRID_CLSP2_Vector, HYBRID_CLSP3_Vector, HYBRID_CLSP4_Vector);
subplot(2,2,2)
plotCLSP_4Vector('Hybrid-Duration2', 2, HYBRID_CLSP1_Vector, HYBRID_CLSP2_Vector, HYBRID_CLSP3_Vector, HYBRID_CLSP4_Vector);
subplot(2,2,3)
plotCLSP_4Vector('Hybrid-Duration3', 3, HYBRID_CLSP1_Vector, HYBRID_CLSP2_Vector, HYBRID_CLSP3_Vector, HYBRID_CLSP4_Vector);
subplot(2,2,4)
plotCLSP_4Vector('Hybrid-Duration4', 4, HYBRID_CLSP1_Vector, HYBRID_CLSP2_Vector, HYBRID_CLSP3_Vector, HYBRID_CLSP4_Vector);

figure
subplot(2,2,1)
plotCLSP_4Vector('P300-Duration1', 1, P300_CLSP1_Vector, P300_CLSP2_Vector, P300_CLSP3_Vector, P300_CLSP4_Vector);
subplot(2,2,2)
plotCLSP_4Vector('P300-Duration2', 2, P300_CLSP1_Vector, P300_CLSP2_Vector, P300_CLSP3_Vector, P300_CLSP4_Vector);
subplot(2,2,3)
plotCLSP_4Vector('P300-Duration3', 3, P300_CLSP1_Vector, P300_CLSP2_Vector, P300_CLSP3_Vector, P300_CLSP4_Vector);
subplot(2,2,4)
plotCLSP_4Vector('P300-Duration4', 4, P300_CLSP1_Vector, P300_CLSP2_Vector, P300_CLSP3_Vector, P300_CLSP4_Vector);

figure
subplot(2,2,1)
plotCLSP_4Vector('SSVEP-Duration1', 1, SSVEP_CLSP1_Vector, SSVEP_CLSP2_Vector, SSVEP_CLSP3_Vector, SSVEP_CLSP4_Vector);
subplot(2,2,2)
plotCLSP_4Vector('SSVEP-Duration2', 2, SSVEP_CLSP1_Vector, SSVEP_CLSP2_Vector, SSVEP_CLSP3_Vector, SSVEP_CLSP4_Vector);
subplot(2,2,3)
plotCLSP_4Vector('SSVEP-Duration3', 3, SSVEP_CLSP1_Vector, SSVEP_CLSP2_Vector, SSVEP_CLSP3_Vector, SSVEP_CLSP4_Vector);
subplot(2,2,4)
plotCLSP_4Vector('SSVEP-Duration4', 4, SSVEP_CLSP1_Vector, SSVEP_CLSP2_Vector, SSVEP_CLSP3_Vector, SSVEP_CLSP4_Vector);

end

function [AllData] = fileProcessor_Mini(directory, File_dir_struct)
   
    AllData = [];
    File_dir_struct.name
    
    for i = 1:length(File_dir_struct)
        allData_struct = importdata(strcat('./', directory, '/', File_dir_struct(i).name));
        AllData = vertcat(AllData, allData_struct.data);
    end
    
end

function plotCLSP_4Vector(GraphTitle, durationNum, Vector1, Vector2, Vector3, Vector4)

title(GraphTitle)
ax = gca; hold all; axis tight; grid on;
plot(Vector1(durationNum, 1), Vector1(durationNum, 2), '*');
text(Vector1(durationNum, 1), Vector1(durationNum ,2), num2str(Vector1(durationNum,1)-Vector1(durationNum,2)), 'VerticalAlignment','bottom', 'HorizontalAlignment','right');
hold on
plot(Vector2(durationNum, 1), Vector2(durationNum, 2), 'o');
text(Vector2(durationNum, 1), Vector2(durationNum, 2), num2str(Vector2(durationNum,1)-Vector2(durationNum,2)), 'VerticalAlignment','bottom', 'HorizontalAlignment','right');
hold on
plot(Vector3(durationNum, 1), Vector3(durationNum, 2), 'x');
text(Vector3(durationNum, 1), Vector3(durationNum, 2), num2str(Vector3(durationNum,1)-Vector3(durationNum,2)), 'VerticalAlignment','bottom', 'HorizontalAlignment','right');
hold on
plot(Vector4(durationNum, 1), Vector4(durationNum, 2), '+');
text(Vector4(durationNum, 1), Vector4(durationNum, 2), num2str(Vector4(durationNum,1)-Vector4(durationNum,2)), 'VerticalAlignment','bottom', 'HorizontalAlignment','right');
hold off
legend('Vector1', 'Vector2', 'Vector3', 'Vector4')

vline = line([0,0],[-5,5]);
vline.Color = 'r';
hline = refline([0 0]);
hline.Color = 'r';
end