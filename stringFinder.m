% CHANWOO
% Show cable connections between tetrahedrons


% Coonection Number
for n = 1:4
    figure(2)
    plot3(stringPts((1:2)+16*(n-1),1),stringPts((1:2)+16*(n-1),2),stringPts((1:2)+16*(n-1),3),'r',...
          stringPts((3:4)+16*(n-1),1),stringPts((3:4)+16*(n-1),2),stringPts((3:4)+16*(n-1),3),'c',...
          stringPts((5:6)+16*(n-1),1),stringPts((5:6)+16*(n-1),2),stringPts((5:6)+16*(n-1),3),'m',...
          stringPts((7:8)+16*(n-1),1),stringPts((7:8)+16*(n-1),2),stringPts((7:8)+16*(n-1),3),'k',...
          stringPts((9:10)+16*(n-1),1),stringPts((9:10)+16*(n-1),2),stringPts((9:10)+16*(n-1),3),'b',...
          stringPts((11:12)+16*(n-1),1),stringPts((11:12)+16*(n-1),2),stringPts((11:12)+16*(n-1),3),'y',...
          stringPts((13:14)+16*(n-1),1),stringPts((13:14)+16*(n-1),2),stringPts((13:14)+16*(n-1),3),'g',...
          stringPts((15:16)+16*(n-1),1),stringPts((15:16)+16*(n-1),2),stringPts((15:16)+16*(n-1),3),'--g')

    hold on
end
for i=0:n       %   # of Tetrahedron block
    tetraPlot = [tetraNodes(1+i*4,1:3);
                 centers(1+i,1:3);
                 tetraNodes(2+i*4,1:3);
                 centers(1+i,1:3);
                 tetraNodes(3+i*4,1:3);
                 centers(1+i,1:3);
                 tetraNodes(4+i*4,1:3);
                 centers(1+i,1:3)];
    plot3(tetraPlot(:,1),tetraPlot(:,2),tetraPlot(:,3),'k','LineWidth',3);
    hold on;
end
grid on
