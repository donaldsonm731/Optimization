%%
syms x y
f = (4*x^2-y)^2;
fsurf(f,[-4 4 -4 4]);
%%
[x1,x2] = meshgrid(-100:100, -100:100);

f = (4*x1.^2 - x2).^2;
g = 4*x1^2 + 2*x1*x2 + 2*x2^2;%x1.^2 + 4.*x1.*x2 + x2.^2 + x1 - x2;
h = 1/3*x1.^3 + 1/2*x2.^2 + x1.*x2;

%[fx,fy] = gradient(f,0.1);
%[gx,gy] = gradient(g,0.1);

% figure(1)
% surf(x1,x2,h);
% hold on
%  plot3(0,0,0,'*','color','r','linewidth',10);
% % plot3(1,4,0,'*','color','r','linewidth',10);
% % plot3(-1,4,0,'*','color','r','linewidth',10);
% % plot3(0.5,1,0,'*','color','r','linewidth',10);
% % plot3(-0.5,1,0,'*','color','r','linewidth',10);
% hold off
% xlabel('x1')
% ylabel('x2')
% zlabel('f(x1,x2)')
% title('f(x) = (4x1^2 - x2)^2')

% figure(2)
 surf(x1,x2,g);
 hold on
 plot3(0,0,0,'*','Color','r','linewidth',10)
 hold off
 xlabel('x1')
 ylabel('x2')
 zlabel('f(x1,x2)')
 title('g(x) = x1.^2 + 4.*x1.*x2 + x2.^2 + x1 - x2')

