
p = 9739 
a = 497
b = 1768 
#E : y^2 = x^3 + a*x + b  et p : modulo 

#P et Q deux point
#return P + Q

def add(P, Q): 
    x1, y1 = P[0], P[1]
    x2, y2 = Q[0], Q[1]
    if (P[0] == 0 and P[1] == 0): 
        return Q 
    elif (Q[0] == 0 and Q[1] == 0): 
        return P 
    elif x1 == x2 and y1 == -y2:
        return [0,0]
    else :
        if (P[0] != Q[0] or P[1] != Q[1]):
            l = (y2 - y1) / (x2 - x1) %p 
        else: 
            l = (3*x1^2 + a) / (2*y1) % p
        
        x3 = (l^2 - x1 - x2) % p
        y3 = (l*(x1 - x3) - y1) %p 
        return x3, y3 

#P un point 
#n le scalaire
#On calcule n*P

def mult(P,n): 
	Q = P
	R = [0,0]
	while(n>0):
		if (n%2) ==1: 
			R = add(R,Q)
		n = n//2
		Q = add(Q,Q) 
		
	return R

