%%

% Graph Problem 1
%f = @(x1,x2) (4*x1^2 + x2).^2;
%x1 = -4:0.1:4;
%x2 = -4:0.1:4;
[x1,x2] = meshgrid(-4:0.1:4, -4:0.1:4);

f = (4*x1.^2 + x2).^2;
g = x1.^2 + 4*x1.*x2 + x2.^2 + x1 - x2;
h = 4*x1.^2 + 2*x1.*x2 + 2*x2.^2;

[fx,fy] = gradient(f,0.1);
[gx,gy] = gradient(g,0.1);

figure(1)
contour(x1,x2,f);
% figure(2)
% surf(x1,x2,fy);


