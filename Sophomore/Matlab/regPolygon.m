function regPolygon(n)

if nargin<1, n=8; end

vertices=exp((0:n)*i*2*pi/n);
plot(vertices, '-o');

hold on
theta=linspace(0, 2*pi);
plot(exp(j*theta), '-r');
hold off
axis image