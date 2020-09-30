% definindo uma função tipo "handle"
%f = @(x) x.^2 - 4*x + 3
%g = @(x) sin(2*x+pi/2)

% avaliando as funções
%f(1)
%g(0)

% definindo séries de dados para a função f
x = 0:-4:4
y = e

% plotando o gráfico de f
plot(x,y,'-or')

% definindo séries de dados para a função g
x = 0:0.1:4*pi;
y = g(x);

% plotando o gráfico de g
plot(x,y,'-or')