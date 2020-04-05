function [] = regGeneralStar(n, k)
    x = linspace(0, 2*pi);
    plot(cos(x), sin(x));
    hold on;
    axis square;
    nc = [];
    ns = [];
    start = 0;
    for start=0:n
        for int=0:n
            nc(start + 1, int + 1) = cos(start*2*pi/n+int*2*pi*k/n);
            ns(start + 1, int + 1) = sin(start*2*pi/n+int*2*pi*k/n);
        end
    end
    for start=0:n
        plot(nc(start+1, :), ns(start+1, :), 'r-o');
    end
    %plot(nc, ns, 'ro');
    hold off;
end