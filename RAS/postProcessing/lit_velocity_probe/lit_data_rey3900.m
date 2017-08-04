%% a script to load all the literature data and plot

load('exp_louranco_shih.csv')
load('exp_ong_wallace.csv')
load('les_breuer.csv')
load('les_rajani_etal.csv')

cd ..

%transpose the loaded data
exp_louranco_shih = exp_louranco_shih';
exp_ong_wallace = exp_ong_wallace';
les_breuer = les_breuer';
les_rajani_etal = les_rajani_etal';

% plot(les_breuer(1,:),les_breuer(2,:), '-g')
% hold on
% plot(les_rajani_etal(1,:),les_rajani_etal(2,:), '-o')
% hold on

% 3D experiments
% plot(exp_louranco_shih(1,:),exp_louranco_shih(2,:), 'or')
% hold on
% plot(exp_ong_wallace(1,:),exp_ong_wallace(2,:), 'ob')


