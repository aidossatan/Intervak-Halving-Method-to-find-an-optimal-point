func =  @(x) x.^2-sin(x);
x_start = -4;
x_finish = 6;
N = 0;
L = x_finish - x_start;
Q = L/4;

x1 = x_start + Q;
x0 = x_start + 2*Q;
x2 = x_start + 3*Q;
f1 = func(x1);
f0 = func(x0);
f2 = func(x2);

f_start = func(x_start);
f_finish = func(x_finish);

iteration = 1;
disp('iteration  x_start  f(x_start)  x_finish  f(x_finish)')


while N < 4
        disp([iteration', x_start', func(x_start)', x_finish', func(x_finish)',])
    if f1>f0 && f0>f2
        x_start = x0;
        f_start = func(x_start); 
        L = x_finish - x_start;
        Q = L/4;
        x1 = x_start + Q;
        x0 = x_start + 2*Q;
        x2 = x_start + 3*Q;
        f1 = func(x1);
        f0 = func(x0);
        f2 = func(x2);
        iteration = iteration + 1;
        N = N+1;
    elseif f1<f0 && f0<f2
        x_finish = x0;
        f_finish = func(x_finish); 
        L = x_finish - x_start;
        Q = L/4;
        x1 = x_start + Q;
        x0 = x_start + 2*Q;
        x2 = x_start + 3*Q;
        f1 = func(x1);
        f0 = func(x0);
        f2 = func(x2);
        iteration = iteration + 1; 
        N = N+1;
    elseif f1>f0 && f0<f2
        x_start = x1;
        x_finish = x2;
        f_finish = func(x_finish);
        f_start = func(x_start);
        L = x_finish - x_start;
        Q = L/4;
        x1 = x_start + Q;
        x0 = x_start + 2*Q;
        x2 = x_start + 3*Q;
        f1 = func(x1);
        f0 = func(x0);
        f2 = func(x2);
        iteration = iteration + 1;
        N = N+1;
    elseif f1<f0 && f0>f2
        x_start = x1;
        x_finish = x2;
        f_finish = func(x_finish);
        f_start = func(x_start);
        L = x_finish - x_start;
        Q = L/4;
        x1 = x_start + Q;
        x0 = x_start + 2*Q;
        x2 = x_start + 3*Q;
        f1 = func(x1);
        f0 = func(x0);
        f2 = func(x2);
        iteration = iteration + 1;
        N = N+1;
    end
end    

x_opt = (x_start+x_finish)/2;
fprintf('The optimum point of the function is %5.4f', x_opt)