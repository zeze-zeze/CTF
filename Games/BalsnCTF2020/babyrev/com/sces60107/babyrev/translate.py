Main$$anonfun$com$sces60107$babyrev$Main$$f$1$1.class
    apply():
        com$sces60107$babyrev$Main$$f$1(a.flatMap(what, canBuildFrom(), what)) 
        

Main$.class
    constructor():
        What = wrapRefArray(Seq[4])
        broken = com$sces60107$babyrev$Main$$f$1({0}, What)

	com$sces60107$babyrev$Main$$f$1():
        return Main$$anonfun$com$sces60107$babyrev$Main$$f$1$1(What$1, a) 
    
    broken():
        return broken

    main():
	    a = [71, 20, -82, 84, -45, -4, 25, -122, 77, 63, -107, 13, -111, -43, 43, -42, 96, 38, -88, 20, -67, -40, 79, -108, 77, 8, -75, 80, -45, -69, 25, -116, 117, 106, -36, 69, -67, -35, 79, -114, 113, 36, -112, 87, -67, -2, 19, -67, 80, 42, -111, 23, -116, -55, 40, -92, 77, 121, -51, 86, -46, -85, 93]
        b = broken().apply(60107) % pow(2, 62)
        flag = [a[i] ^ b[i % len(b)] for i in range(len(a))]     	

Main.class
    main():
        Main$.main            
