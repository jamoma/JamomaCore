 x     = linspace(0,1,128);
 ylow  = linspace(0,0,128);
 yhigh = linspace(0,0,128);
 
 xlow  = 1 - 2 * x

 for i = 1:128
	if (xlow(i) < 4/11.0)
		ylow(i) = (121 * xlow(i) * xlow(i))/16.0
	elseif (xlow(i) < 8/11.0)
		ylow(i) = (363/40.0 * xlow(i) * xlow(i)) - (99/10.0 * xlow(i)) + 17/5.0
	elseif (xlow(i) < 9/10.0)
		ylow(i) = (4356/361.0 * xlow(i) * xlow(i)) - (35442/1805.0 * xlow(i)) + 16061/1805.0
	else
		ylow(i) = (54/5.0 * xlow(i) * xlow(i)) - (513/25.0 * xlow(i)) + 268/25.0
	endif
 endfor
 
 ylow = 0.5 * (1 - ylow)
 
 xhigh = (x * 2 - 1)
 
 for i = 1:128
	if (xhigh(i) < 4/11.0)
		yhigh(i) = (121 * xhigh(i) * xhigh(i))/16.0
	elseif (xhigh(i) < 8/11.0)
		yhigh(i) = (363/40.0 * xhigh(i) * xhigh(i)) - (99/10.0 * xhigh(i)) + 17/5.0
	elseif (xhigh(i) < 9/10.0)
		yhigh(i) = (4356/361.0 * xhigh(i) * xhigh(i)) - (35442/1805.0 * xhigh(i)) + 16061/1805.0
	else
		yhigh(i) = (54/5.0 * xhigh(i) * xhigh(i)) - (513/25.0 * xhigh(i)) + 268/25.0
	endif
 endfor
 
 yhigh = 0.5 * yhigh + 0.5
 
 ylow  = (x <  0.5) .* ylow
 yhigh = (x >= 0.5) .* yhigh
 
 y = ylow + yhigh
 
 printf("%.16e,\n", y)