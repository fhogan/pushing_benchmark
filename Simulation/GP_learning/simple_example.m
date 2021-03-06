clear
clc
close all

%% Building the dataset (wierd functions)
x1 = (0:0.005:3)'; x2 = cos(0:0.005:3)';
input_training = [x1, x2];
x = input_training;
real_y = (sum(input_training,2));
y_training = (sum(input_training,2))+normrnd(0,1, length(input_training),1).*abs(cos((x(:,1).^2+x(:,2).^2)/2));
input_test = input_training;
y_test = y_training;
[X1, X2] = meshgrid(x1, -1:0.05:1); 
x_grid = [X1(:), X2(:)];


%% Learning and Predicting grid
%[~, ~, Ey_test, Vy_test,  mutst, diagSigmatst, atst, diagCtst, alpha, covfunc1, theta1, X, lengthscales] = vhgpr_ui(input_training, y_training, x_grid, X1(:)*0);
[~, ~, Ey_test, Vy_test,  mutst, diagSigmatst, atst, diagCtst, alpha, covfunc1, theta1, X, lengthscales] = vhgpr_ui(input_training, y_training, input_training, y_training);

%{
%% Use interpolation for new predictions
vhgp_mean_eval = fit(x_grid, Ey_test,'linearinterp');
vhgp_std_eval = fit(x_grid, sqrt(Vy_test),'linearinterp');
%% Predict test
predicted_mean = vhgp_mean_eval(input_test);
predicted_std = vhgp_std_eval(input_test);

%% Plotting results
std_y_test = sqrt(Vy_test);
% figure; plot3(input_test(:,1), input_test(:,2),predicted_mean); hold on;  
% plot3(input_test(:,1), input_test(:,2),real_y); plot3(input_test(:,1), input_test(:,2),y_test, '.');  
% plot3(input_test(:,1), input_test(:,2),predicted_mean+predicted_std, 'k'); 
% plot3(input_test(:,1), input_test(:,2),predicted_mean-predicted_std, 'k');

%% Compute mean using GP formula
x_grid = x_grid./(ones( size(x_grid,1) ,1)*exp(lengthscales(:)'));
[~, K1star] = feval(covfunc1{:}, theta1, X, x_grid);
new_Ey_test = K1star'*alpha;
%}
xp = sym('xp', [2,1]);
k_star = [];
for i=1:length(input_training)
    k_star = [k_star, covFunc(theta1, X(i,:)', xp)];
end
f_gp = matlabFunction(k_star*alpha, 'Vars', {xp});
f = k_star*alpha;


for i=1:length(input_test)
    input(i,:) = [input_test(i,1);input_test(i,2)];
    
    input(i,:) = input(i,:)./(ones( size(input(i,:),1) ,1)*exp(lengthscales(:)'));

    output(i,:) = f_gp(input(i,:)');
end

% A = jacobian(k_star*alpha, xp);
figure; 
%plot3(input_test(:,1), input_test(:,2),predicted_mean); hold on;  
plot3(input_test(:,1), input_test(:,2),output, 'm'); hold on;
plot3(input_test(:,1), input_test(:,2),real_y); hold on;
plot3(input_test(:,1), input_test(:,2),y_test, '.');  hold on;
%plot3(input_test(:,1), input_test(:,2),predicted_mean+predicted_std, 'k'); hold on;
%plot3(input_test(:,1), input_test(:,2),predicted_mean-predicted_std, 'k');
