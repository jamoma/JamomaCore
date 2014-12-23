 x = linspace(0,1,128);
 y = linspace(0,0,128);
 
 f = 1 - x
 
 for i = 1:128
	if (f(i) < 4/11.0)
		y(i) = (121 * f(i) * f(i))/16.0
	elseif (f(i) < 8/11.0)
		y(i) = (363/40.0 * f(i) * f(i)) - (99/10.0 * f(i)) + 17/5.0
	elseif (f(i) < 9/10.0)
		y(i) = (4356/361.0 * f(i) * f(i)) - (35442/1805.0 * f(i)) + 16061/1805.0
	else
		y(i) = (54/5.0 * f(i) * f(i)) - (513/25.0 * f(i)) + 268/25.0
	endif
 endfor
 
 y = 1 - y
 
 printf("%.16e,\n", y)