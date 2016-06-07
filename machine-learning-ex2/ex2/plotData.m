function plotData(X, y)

% Create New Figure
figure; hold on;

pos = find(y == 1);
neg = find(y == 0);
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),X(neg,2),'ro','LineWidth',2,'MarkerSize',7);
xlabel('sub 1 marks');
ylabel('sub 2 marks');
legend('positive','negative','location','northeast');
hold off;

end
