function [XI,h] = SemenenkoCSimpson(a,b,n)
% WS 08 - part 2: Composite trapezoidal rule 
% for \int_a^b f(x) dx
% Define f(x) in another file f.m
fprintf('Composite Simpson’s rule')
h = (b-a)/n;
XI1 = 0;
XI2 = 0;
for i=1:n-1
    X=a+i*h;
    if mod(i,2)==0
        XI2=XI2+f(X);
    else
        XI1=XI1+f(X);
    end
end

XI = (h/3)*(f(a)+2*XI2+4*XI1+f(b));
end