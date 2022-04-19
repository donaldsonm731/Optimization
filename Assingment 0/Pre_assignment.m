
%%

A = hadamard(32)/sqrt(32);

B = A.';

C = round(B*A);
I = eye(32);

if C == I
    disp('The matrix A is orthogonal')
else
    disp('The matrix A is not orthogonal')
end

%%
b = ones(32, 1)/sqrt(32);
D = round(inv(A)*b)

%%
a = [1 3;
     2 4];
b = [11 14;
     5 3;
     3 2]; 
 
%c = a.*b;
d = a'*a;