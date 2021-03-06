function area=monte_carlo()
    hold on;
    xlim([-5,5])
    
    ylim([-5,10])
    r=5
    
    x1 = linspace(0, 5, 500)
    y1 = -sqrt(r*r-x1.*x1)
    plot(x1, y1,'*r')
    
    y11 = linspace(0,10,500)
    plot(5,y11,'*b')
    
    x2 = linspace(0,5,500)
    plot(x2,10,'*b')
    
    x22 = linspace(-5,0,500)
    plot(x22,-5,'*b')
    
    y3 = linspace(-5,0,500)
    plot(-5,y3,'*b')
    
    x33 = linspace(-5, 0,500);
    y33 =  2*x33 + 10;
    plot(x33, y33,'b*')
    hits=0
    
    ax = -5
    bx = 5
    ay = -5
    by = 10
    
    t=2000
    
    for i=1:t
        rand_x=rand() * (bx-ax) + ax;
        rand_y=rand() * (by-ay) + ay;
        fy1 = 2*rand_x+10;
        fy2 = -sqrt(5*5-rand_x.*rand_x)
        if rand_x*rand_y >0
            hits = hits+1
            plot(rand_x,rand_y,'*g')
        elseif fy1>=rand_y && fy2<=rand_y
            hits = hits+1
            plot(rand_x,rand_y,'*g')
        else
            plot(rand_x,rand_y,'*r')
        end
    end
    
    area = (hits/t)*150;
    disp(area);