import numpy as np

#Coordinates of our 3 circles
A = [0,0]
B = [0,30]
C = [40,0]

SIGMA=0.45

#Response time
A_response_time = 0.000000264
B_response_time = 0.000000330
C_response_time = 0.000000528

#speed of light
speed_light = 300000000

#The radius of our 3 circles
A_radius = (A_response_time/2) * speed_light
B_radius = (B_response_time/2) * speed_light
C_radius = (C_response_time/2) * speed_light

#A list of coordinates of our circles
a_coord = []
b_coord = []
c_coord = []

#Iterates through 0 to 360 degrees of the circle
for x in range(360):
	#cos(60) = X/radius
	#sin(60) = Y/radius
	#A1 is movement in X coordinate
	A1 = (np.cos(x) * A_radius) + A[0]
	#A2 is movement in Y coordinate
	A2 = (np.sin(x) * A_radius) + A[1]
	a_coord.append([A1,A2])
	#B1 is movement in X coordinate
	B1 = (np.cos(x) * B_radius) + B[0]
	#B2 is movement in Y coordinate
	B2 = (np.sin(x) * B_radius) + B[1]
	b_coord.append([B1,B2])
	#C1 is movement in X coordinate
	C1 = (np.cos(x) * C_radius) + C[0]
	#C2 is movement in Y coordinate
	C2 = (np.sin(x) * C_radius) + C[1]
	c_coord.append([C1,C2])


for a_sub_coord in a_coord:
	for b_sub_coord in b_coord:
		for c_sub_coord in c_coord:
			if (abs(a_sub_coord[0]-b_sub_coord[0])<SIGMA):
				if (abs(a_sub_coord[0]-c_sub_coord[0])<SIGMA):
					if (abs(a_sub_coord[1]-b_sub_coord[1])<SIGMA):
						if (abs(a_sub_coord[1]-c_sub_coord[1])<SIGMA):
							print a_sub_coord

