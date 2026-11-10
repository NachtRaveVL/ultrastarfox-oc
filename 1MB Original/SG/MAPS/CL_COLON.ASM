gpipescale	=	16

	mapplayercantdie	
	mapplayermode	toCslow

	mapobjnomem	400,0,-60,4200,pipe_8_0,nocoll_Istrat
	mapobjnomem	400+400,0,-60,4200,pipe_8_0,nocoll_Istrat
	mapobjnomem	0,0,-60,4200,pipe_8,colonyexit_Istrat
	mapwait		4000

pdist	=	940+(20*pipescale)

	setbg	2_6b
	initbg

	mappipe	0,0,0,0,0
	mappipe	-11,40,-1,0,2
	mappipe	-40,70,-2,1,2
	mappipewait	
	mappipe	-69,100,-1,0,3
	mappipewait	
	mappipe	-80,141,0,1,0
	mappipewait	
	mappipe	-69,181,1,0,3
	mappipewait	
	mappipe	-49,196,2,1,2	; segments around here like to clip
	mappipewait	
	mappipe	-1,218,3,0,5
	mappipewait	
	mappipe	40,221,3,0,4


	mappipe	80,232,2,0,2
	mappipe	109,262,1,1,3
	mappipewait	
	mappipe	120,302,0,0,0
	mappipewait	
	mappipe	109,342,-1,1,3
	mappipewait	
	mappipe	80,373,-2,0,2
	mappipewait	

	mappipe 66,383,-3,0,3
	mappipe	39,392,-2,1,2	; segments around here like to clip
	mappipe	9,424,-1,1,2

	mappipe	0,463,0,0,0
	mappipewait	

	mappipe	0,503+30,0,0,6
	setalvar	rotz,0
	mappipewait	
	mappipe	0,533+100,0,0,6
	setalvar	rotz,-12
	mappipewait	
	mappipe	0,533+200,0,0,6
	setalvar	rotz,-25
	mappipewait	
	mappipe	0,533+300,0,0,6
	setalvar	rotz,-42
	mappipewait	
	mappipe	0,533+400,0,0,6
	setalvar	rotz,-56



		   
