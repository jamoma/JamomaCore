 x = linspace(0,1,128);
 y = linspace(0,0,128);
 
 for i = 1:128
	if (x(i) < 4/11.0)
		y(i) = (121 * x(i) * x(i))/16.0
	elseif (x(i) < 8/11.0)
		y(i) = (363/40.0 * x(i) * x(i)) - (99/10.0 * x(i)) + 17/5.0
	elseif (x(i) < 9/10.0)
		y(i) = (4356/361.0 * x(i) * x(i)) - (35442/1805.0 * x(i)) + 16061/1805.0
	else
		y(i) = (54/5.0 * x(i) * x(i)) - (513/25.0 * x(i)) + 268/25.0
	endif
 endfor
 
 printf("%.16e,\n", y)