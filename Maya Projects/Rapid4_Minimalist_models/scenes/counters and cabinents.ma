//Maya ASCII 2022 scene
//Name: counters and cabinents.ma
//Last modified: Mon, Nov 08, 2021 07:18:46 PM
//Codeset: 1252
requires maya "2022";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2022";
fileInfo "version" "2022";
fileInfo "cutIdentifier" "202108111415-612a77abf4";
fileInfo "osv" "Windows 10 Pro v2009 (Build: 19043)";
fileInfo "UUID" "7B33AAE0-4F0B-5D0A-69D5-05A15D517694";
createNode transform -s -n "persp";
	rename -uid "8A9F40ED-47AD-E2C2-D835-57B830F4CFE1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -331.89001427748786 308.11819664520715 59.306395685414657 ;
	setAttr ".r" -type "double3" -19.53835272946597 -101.3999999997109 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "77B2DF95-4CF3-A005-660B-6DB6A12F4C6D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 614.61844797539413;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 269.7392652034759 200.50035333633423 198.89131784439093 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "74F3B2B8-403F-F8AE-BA2E-DB803A7106B0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "833AC4D1-4CFE-6A17-291C-E8B70D182FA8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "0AD137D7-48D1-8F58-E9D7-70BCF5538744";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4CC0340A-4F73-4EBB-F0C4-41A8D0FD7F84";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "873889AD-424B-8D5C-170D-2FB5E3DBBBA9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1A15068D-498E-DBFA-81CF-9E97E895501E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "counters_and_cabinents";
	rename -uid "D2A68045-4975-DF64-8E41-1B8FB42DDDF0";
createNode transform -n "lower" -p "counters_and_cabinents";
	rename -uid "9C6B1AAC-40F6-043C-5913-CAA53348B1D8";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 74.292465209960938 89.456306457519531 302.3785400390625 ;
	setAttr ".s" -type "double3" 65 4 65 ;
	setAttr ".rp" -type "double3" 0 0 32.5 ;
	setAttr ".sp" -type "double3" 0 0 0.5 ;
	setAttr ".spt" -type "double3" 0 0 32 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "lowerShape" -p "lower";
	rename -uid "D97F82BC-4F98-7149-7A0D-44AC7F1ACDF3";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47711670398712158 1.095661910250783 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 12 ".pt";
	setAttr ".pt[42]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".pt[43]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape2" -p "lower";
	rename -uid "BA079847-49C0-F52F-517D-688902EA002E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.5044492483139038 0.51006293296813965 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 56 ".uvst[0].uvsp[0:55]" -type "float2" -0.11635559 1.29594851
		 -0.11356945 1.27985978 0.15427977 -0.076290369 0.1382636 1.33851337 0.3884435 -0.064288616
		 0.1520362 1.34377313 0.4432441 0.2140801 0.43078753 0.20397997 0.16613823 0.15850544
		 1.22192836 -0.0008699894 1.21575785 -0.013831139 1.15660739 -0.26220441 1.17303097
		 -0.26531863 2.70987201 1.30735946 1.57529974 1.23473072 2.95104671 1.31920934 0.79510158
		 1.30312157 1.18896866 -0.26836777 2.96774364 0.97352314 0.53356951 0.97447443 2.96604538
		 1.0091106892 2.72478294 0.99766397 1.57461452 0.92214441 0.77674979 0.99697733 0.53555912
		 1.010046005 0.10457487 1.32785606 0.39055508 0.19742703 0.35725036 -0.06561327 1.50444794
		 0.49248397 2.69556856 0.49239242 2.76041222 0.99929905 0.098297834 1.35580993 0.11438558
		 1.34210801 0.66078138 0.49254882 0.74108952 0.99850082 1.23111546 -0.054131269 1.21728742
		 -0.038028479 1.20392001 -0.046395779 0.42434907 0.16308641 0.38714552 0.15948915
		 0.16407603 0.12731123 1.56881976 0.88766313 2.72620082 0.96242905 0.77534741 0.96211338
		 2.69557142 0.5275501 1.50445056 0.52764189 0.66078401 0.5277065 2.76211429 0.96371031
		 0.73907679 0.96292782 0.75945109 1.30586958 0.55449718 1.31918859 2.74549723 1.30915737
		 -0.11942643 1.31179428 1.22356153 0.010486841 0.45209098 0.21675158 0.16360712 1.34428954;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 49 ".vt[0:48]"  -0.73274833 -0.5 0.5 -0.73274833 0.5 0.5
		 4.81891537 0.5 0.5 -0.73274833 0.5 -0.5 4.81891537 0.5 -0.5 -0.73274833 -0.5 -0.5
		 3.81891441 -0.5 -0.5 3.81891441 0.5 -0.5 3.81891441 0.5 0.5 3.81891441 -0.5 -3.68422222
		 3.81891441 0.5 -3.68422222 4.81891537 0.5 -3.68422222 4.81891537 -0.5 -3.68422222
		 3.88088608 -0.50000191 -0.43857431 -0.67156208 -0.50000191 -0.43857431 -0.67156196 -0.50000191 0.5
		 3.88088608 -0.50000191 -3.62269902 4.81891537 -0.50000191 -3.62269974 -0.67156196 -22.36408043 0.5
		 4.81891537 -22.36408043 -3.62269974 -0.67156196 -20.11399651 0.5 -0.67156208 -20.11399651 -0.43857431
		 3.88088608 -20.11399651 -0.43857431 3.88088608 -20.11399651 -3.62269878 4.81891537 -20.11399651 -3.62269974
		 -0.73274833 0.5 -0.35230637 3.81891441 0.5 -0.35230637 4.81891537 0.5 -0.35230637
		 4.019620419 -22.36408043 -0.2999526 -0.67156208 -22.36408234 -0.29995251 -0.67156208 -20.11399651 -0.29995251
		 -0.67156208 -0.50000191 -0.29995251 -0.73274839 -0.5 -0.35230637 4.019710064 -22.36408043 -3.62269902
		 4.019710064 -20.11399651 -3.62269878 4.019710064 -0.50000191 -3.62269902 3.96690989 -0.5 -3.68422222
		 3.96690989 0.5 -3.68422222 3.96690989 0.5 -0.5 3.96690989 0.5 -0.35230637 3.96690989 0.5 0.5
		 -0.67156208 -20.11399651 -0.29995275 4.019709587 -20.11399651 -0.29995334 4.019709587 -20.11399651 -3.62269878
		 4.019620419 -20.1139946 -0.2999526 -0.67156208 -20.1139946 -0.29995251 4.019710064 -20.1139946 -3.62269902
		 -0.67156208 -22.36408234 -0.29995251 4.019710064 -22.36408043 -3.62269902;
	setAttr -s 79 ".ed[0:78]"  38 39 0 39 27 0 27 4 0 4 38 0 36 37 0 37 11 0
		 11 12 0 12 36 0 5 32 0 32 25 0 25 3 0 3 5 0 3 7 0 7 6 0 6 5 0 25 26 0 26 7 0 14 5 0
		 6 13 0 13 14 0 17 35 0 35 36 0 12 17 0 6 9 0 9 16 0 16 13 0 7 10 0 10 9 0 37 38 0
		 4 11 0 31 32 0 14 31 0 48 34 0 34 24 0 24 19 0 19 48 0 30 31 0 14 21 0 21 30 0 13 22 0
		 22 21 0 16 23 0 23 22 0 34 35 0 17 24 0 25 1 0 1 8 0 8 26 0 39 40 0 40 2 0 2 27 0
		 20 30 0 30 47 0 47 18 0 18 20 0 15 31 0 20 15 0 15 0 0 0 32 0 0 1 0 16 35 0 34 23 0
		 9 36 0 10 37 0 7 38 0 26 39 0 8 40 0 22 42 0 42 41 0 41 21 0 23 43 0 43 42 0 28 29 0
		 29 45 0 45 44 0 44 28 0 33 28 0 44 46 0 46 33 0;
	setAttr -s 128 ".n[0:127]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 -1 1.0089237e-07 -2.0178474e-07 -1 7.4505806e-08 0 -1 7.4505806e-08
		 0 -1 1.0089237e-07 -2.0178474e-07 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0 1 0 0 1 0 0
		 1 0 -9.483943e-07 -1 -2.9762339e-05 -9.42317e-07 -1 -2.9768322e-05 0 -1 -3.0696232e-05
		 0 -1 -3.0696232e-05 -1.7905696e-11 -1 -3.109689e-05 -1.6802811e-11 -1 -3.1105985e-05
		 -1.2266732e-11 -1 -3.114338e-05 -1.7905694e-11 -1 -3.1096894e-05 -3.077777e-05 -1
		 0 -2.9472132e-05 -1 -1.3254403e-06 -2.9456629e-05 -1 -1.3411781e-06 -3.077777e-05
		 -1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -3.1172753e-05 -1 4.2211304e-12
		 -3.1172756e-05 -1 3.0862138e-12 -9.42317e-07 -1 -2.9768322e-05 -9.483943e-07 -1 -2.9762339e-05
		 -1.0606524e-06 5.2979839e-08 -1 -8.4994429e-07 -1.6387984e-09 -1 -9.8238797e-07 -1.3461211e-14
		 -1 -1.0606524e-06 5.2979839e-08 -1 -1 0 1.2897134e-07 -1 0 1.2701102e-07 -1 0 0 -1
		 0 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -8.4994429e-07 -1.6387984e-09
		 -1 -8.2934957e-07 -6.9772517e-09 -1 -9.7340967e-07 -6.0777707e-09 -1 -9.8238797e-07
		 -1.3461211e-14 -1 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 -1 0 1.4902047e-07
		 -1 0 1.2897134e-07 -1 0 1.4902052e-07 -1 0 1.4902052e-07 -1 0 1.4902045e-07 -1 0
		 1.2701102e-07 -1 0 1.2897134e-07 -1 0 1.4902047e-07 -3.1172753e-05 -1 4.4981831e-12
		 -3.1172749e-05 -1 4.4981826e-12 -3.1172756e-05 -1 3.0862138e-12 -3.1172753e-05 -1
		 4.2211304e-12 -1 7.4505806e-08 0 -1 7.4505806e-08 0 -1 6.9933364e-08 3.4966682e-08
		 -1 6.9933364e-08 3.4966682e-08 0 -1.2155533e-08 -1 -8.2934957e-07 -6.9772517e-09
		 -1 -8.4994429e-07 -1.6387984e-09 -1 0 -1.2155533e-08 -1 -1.2266732e-11 -1 -3.114338e-05
		 -1.6802811e-11 -1 -3.1105985e-05 -2.9456629e-05 -1 -1.3411781e-06 -2.9472132e-05
		 -1 -1.3254403e-06 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0
		 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 -1 1.1908126e-05 0 -1 6.9862358e-06 0 -1 6.9790772e-06
		 0 -1 1.1908125e-05 0 -1 6.9862358e-06 0 -1 0 0 -1 0 0 -1 6.9790772e-06 -0.5779894
		 0 -0.81604439 -1.6940239e-08 0 -1 -1.6940241e-08 0 -1 -0.57798952 0 -0.81604433 -1
		 0 -2.6979318e-05 -0.5779894 0 -0.81604439 -0.57798952 0 -0.81604433 -1 0 -2.6979318e-05;
	setAttr -s 32 -ch 128 ".fc[0:31]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 38 39 27 4
		f 4 4 5 6 7
		mu 0 4 36 37 11 12
		f 4 8 9 10 11
		mu 0 4 5 32 25 3
		f 4 -12 12 13 14
		mu 0 4 5 3 7 6
		f 4 -11 15 16 -13
		mu 0 4 3 25 26 7
		f 4 17 -15 18 19
		mu 0 4 55 5 6 54
		f 4 20 21 -8 22
		mu 0 4 17 35 36 12
		f 4 23 24 25 -19
		mu 0 4 6 9 53 54
		f 4 -14 26 27 -24
		mu 0 4 6 7 10 9
		f 4 28 -4 29 -6
		mu 0 4 37 38 4 11
		f 4 30 -9 -18 31
		mu 0 4 31 32 5 55
		f 4 32 33 34 35
		mu 0 4 48 34 24 19
		f 4 36 -32 37 38
		mu 0 4 30 51 13 21
		f 4 -20 39 40 -38
		mu 0 4 13 14 22 21
		f 4 -26 41 42 -40
		mu 0 4 14 16 23 22
		f 4 43 -21 44 -34
		mu 0 4 34 49 50 24
		f 4 -16 45 46 47
		mu 0 4 26 25 1 8
		f 4 -2 48 49 50
		mu 0 4 27 39 40 2
		f 4 51 52 53 54
		mu 0 4 20 30 47 18
		f 4 55 -37 -52 56
		mu 0 4 15 51 30 20
		f 4 57 58 -31 -56
		mu 0 4 52 0 32 31
		f 4 -10 -59 59 -46
		mu 0 4 25 32 0 1
		f 4 60 -44 61 -42
		mu 0 4 16 49 34 23
		f 4 -22 -61 -25 62
		mu 0 4 36 35 53 9
		f 4 -28 63 -5 -63
		mu 0 4 9 10 37 36
		f 4 64 -29 -64 -27
		mu 0 4 7 38 37 10
		f 4 -17 65 -1 -65
		mu 0 4 7 26 39 38
		f 4 -49 -66 -48 66
		mu 0 4 40 39 26 8
		f 4 -41 67 68 69
		mu 0 4 21 22 41 42
		f 4 -43 70 71 -68
		mu 0 4 22 23 43 41
		f 4 72 73 74 75
		mu 0 4 28 29 44 45
		f 4 76 -76 77 78
		mu 0 4 33 28 45 46;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "upper" -p "counters_and_cabinents";
	rename -uid "F5A7F3BF-4A81-C931-E424-FFA878327878";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".t" -type "double3" 74.292465209960938 239.91744995117188 302.3785400390625 ;
	setAttr ".s" -type "double3" 65 4 65 ;
	setAttr ".rp" -type "double3" 252.257595062256 -45.728164672851598 -28.507330417633099 ;
	setAttr ".sp" -type "double3" 3.8808860778808598 -11.4320411682129 -0.43857431411743197 ;
	setAttr ".spt" -type "double3" 248.376708984375 -34.2961235046387 -28.0687561035156 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "upperShape" -p "upper";
	rename -uid "81F8A76F-42B2-9C36-8D44-E087B14E99B2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.32717506209747849 1.6369795003617473 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape3" -p "upper";
	rename -uid "E00B1461-4845-1392-2779-4C9FC423E8BA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.9184754490852356 0.95165745168924332 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 1.77041924 0.11602546
		 1.81305563 0.15767463 1.74561322 1.19037426 1.55330312 0.27061424 1.49981225 1.079179168
		 1.5100292 0.24820013 1.58733523 0.88066107 1.63646877 0.85696459 1.87279713 0.93292636
		 0.95285892 0.96480632 0.99763227 0.94449413 1.2197144 1.027327895 1.17379308 1.067412734
		 0.58407778 0.27098966 0.37174076 1.27390349 0.42924678 0.061068747 1.22313523 1.34194791
		 1.16005254 1.077571392 0.35835499 1.88134468 0.0976035 1.8813318 0.091638148 1.61750829
		 0.28364778 0.37349328 0.3387993 1.62531376 0.098550618 0.25109911 1.12972474 1.65511477
		 1.2101388 1.85279 1.57451284 0.90418458 0.88265562 0.19293731 0.93420553 0.17898214
		 1.21999478 0.12196028 0.94063759 0.96229088 1.44862604 1.51430929 0.8647604 0.18121898
		 0.61857039 1.0040076971 1.50006735 0.25101966 1.75861824 0.10371425 -0.026914641
		 0.94588768 0.23532532 1.00400424;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 26 ".vt[0:25]"  1.19483232 -0.5 0.5 1.19483232 2.65553212 0.5
		 4.81891537 2.65553212 0.5 1.19483232 2.65553212 -0.5 4.81891537 2.65553212 -0.5 1.19483232 -0.5 -0.5
		 3.81891441 -0.5 -0.5 3.81891441 2.65553212 -0.5 3.81891441 2.65553212 0.5 3.81891441 -0.5 -3.68422222
		 3.81891441 2.65553212 -3.68422222 4.81891537 2.65553212 -3.68422222 4.81891537 -0.5 -3.68422222
		 3.88088608 -0.50000191 -0.43857431 1.2560184 -0.50000191 -0.43857431 1.25601852 -0.50000089 0.5
		 3.88088608 -0.50000191 -3.62269902 4.81891537 -0.50000089 -3.62269974 3.81891441 -22.36405945 0.5
		 3.88088608 -22.36408043 -0.43857431 4.81891537 -22.36408043 -0.5 4.81891537 -22.36405945 0.5
		 1.2560184 -22.36408043 -0.43857431 1.25601852 -22.36408043 0.5 3.88088608 -22.36408043 -3.62269902
		 4.81891537 -22.36408043 -3.62269974;
	setAttr -s 43 ".ed[0:42]"  7 8 0 8 2 0 2 4 0 4 7 0 9 10 0 10 11 0 11 12 0
		 12 9 0 18 19 0 19 20 0 20 21 0 21 18 0 5 0 0 0 1 0 1 3 0 3 5 0 22 19 0 18 23 0 23 22 0
		 3 7 0 7 6 0 6 5 0 1 8 0 19 24 0 24 25 0 25 20 0 14 5 0 6 13 0 13 14 0 17 16 0 16 9 0
		 12 17 0 6 9 0 16 13 0 7 10 0 4 11 0 15 0 0 14 15 0 13 19 0 22 14 0 23 15 0 16 24 0
		 17 25 0;
	setAttr -s 72 ".n[0:71]" -type "float3"  0 1 0 0 1 0 0 1 0 0 1 0 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 3.1658133e-06 -1 1.3140428e-05 1.638272e-06 -1 7.4002419e-06
		 1.5515036e-07 -1 5.0516442e-06 6.8675212e-07 -1 2.2360424e-05 -1 0 0 -1 0 0 -1 0
		 0 -1 0 0 4.0442933e-06 -1 9.873228e-06 1.638272e-06 -1 7.4002419e-06 3.1658133e-06
		 -1 1.3140428e-05 4.0442933e-06 -1 9.873228e-06 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 1 0
		 0 1 0 0 1 0 0 1 0 1.5515036e-07 -1 5.0516442e-06 1.638272e-06 -1 7.4002419e-06 0
		 -1 0 0 -1 0 -6.2349663e-06 -1 -2.2027436e-05 -6.2047811e-06 -1 -2.2067572e-05 0 -1
		 -3.0318068e-05 0 -1 -3.0318064e-05 5.2282917e-07 -1 -2.3995191e-05 -2.3498178e-05
		 -1 -5.5805681e-06 -2.3566832e-05 -1 -5.5279393e-06 5.2282917e-07 -1 -2.399519e-05
		 -3.077777e-05 -1 0 -2.3566832e-05 -1 -5.5279393e-06 -2.3498178e-05 -1 -5.5805681e-06
		 -3.077777e-05 -1 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 -2.3154989e-05
		 -1 4.7110649e-07 -2.3154989e-05 -1 4.7110649e-07 -6.2047811e-06 -1 -2.2067572e-05
		 -6.2349663e-06 -1 -2.2027436e-05 0 0 -1 0 0 -1 0 0 -1 0 0 -1 -1 0 1.2701102e-07 -1
		 0 1.2701102e-07 -1 0 1.2701102e-07 -1 0 1.2701102e-07 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1.1159988e-06 0 -1 -1.1159989e-06 0 -1 -1.1159988e-06 0 -1 -1.1159988e-06 0 -1;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 7 8 2 4
		f 4 4 5 6 7
		mu 0 4 9 10 11 12
		f 4 8 9 10 11
		mu 0 4 20 22 18 19
		f 4 12 13 14 15
		mu 0 4 5 0 1 3
		f 4 16 -9 17 18
		mu 0 4 21 37 36 23
		f 4 -16 19 20 21
		mu 0 4 5 3 7 6
		f 4 -15 22 -1 -20
		mu 0 4 3 1 8 7
		f 4 -10 23 24 25
		mu 0 4 18 22 24 25
		f 4 26 -22 27 28
		mu 0 4 34 5 6 26
		f 4 29 30 -8 31
		mu 0 4 17 30 9 12
		f 4 32 -31 33 -28
		mu 0 4 27 9 30 32
		f 4 -21 34 -5 -33
		mu 0 4 27 28 10 9
		f 4 -4 35 -6 -35
		mu 0 4 28 29 11 10
		f 4 36 -13 -27 37
		mu 0 4 35 0 5 34
		f 4 -29 38 -17 39
		mu 0 4 13 33 37 21
		f 4 -38 -40 -19 40
		mu 0 4 15 13 21 23
		f 4 -34 41 -24 -39
		mu 0 4 14 16 24 22
		f 4 -30 42 -25 -42
		mu 0 4 16 31 25 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode transform -n "island" -p "counters_and_cabinents";
	rename -uid "4E0DCA40-4D88-774E-E659-3EA7FE2C646C";
	addAttr -is true -ci true -k true -sn "currentUVSet" -ln "currentUVSet" -dt "string";
	setAttr ".rp" -type "double3" 134.51716995239258 45.31597900390625 125.12924194335938 ;
	setAttr ".sp" -type "double3" 134.51716995239258 45.31597900390625 125.12924194335938 ;
	setAttr -k on ".currentUVSet" -type "string" "map1";
createNode mesh -n "islandShape" -p "island";
	rename -uid "7A6E85B7-4469-3449-A68C-BBBEB56A857E";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.61949068307876587 1.095661910250783 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".vbc" no;
createNode mesh -n "polySurfaceShape1" -p "island";
	rename -uid "E295F276-481C-356B-3666-ECA1A8784242";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 5 "f[0:14]" "f[16:17]" "f[19]" "f[21:25]" "f[28:29]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 4 "f[15]" "f[18]" "f[20]" "f[26:27]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 60 ".uvst[0].uvsp[0:59]" -type "float2" 0.56511539 0.57715273
		 0.53187257 0.56979787 0.75286001 0.54301721 0.72604179 0.5663563 0.36513045 0.33328068
		 0.92400551 0.40065619 1.44960558 -0.25569084 1.76284218 -0.2826955 1.76326406 -0.26644659
		 1.46304703 -0.2491964 0.2623457 0.36635184 0.50037223 0.57208925 1.13937306 -0.2418423
		 1.14522254 -0.25764701 1.33149469 -0.24071158 0.67070931 1.55067015 0.64129549 1.53340757
		 1.089286447 -0.25773686 1.10411227 -0.24193212 1.83375251 -0.26499581 1.81881106
		 -0.26152945 0.90418345 1.70146155 0.47487688 1.50160265 0.44198689 1.51647973 1.46201384
		 0.58335114 1.448789 0.58995819 0.4086847 1.52091455 1.33068407 0.57441205 0.241901
		 1.69606841 0.73113585 0.80395162 0.42221901 0.9759866 0.36183113 0.86755031 0.67074794
		 0.69551533 1.088451982 0.59051293 1.10331059 0.57469261 1.83813858 0.59689707 1.82319486
		 0.59310329 0.25257465 0.67136258 0.56149143 0.49932757 0.34424424 1.7389791 0.28253826
		 0.26603547 0.62312686 -0.069894783 0.74104542 0.049658962 0.40045685 0.38558921 1.76654255
		 0.59772998 1.76637387 0.61395985 1.14435101 0.59065366 1.13857794 0.57474816 0.18415487
		 0.59893274 0.066236302 0.479379 0.25585181 0.29235694 0.64981329 -0.096216239 0.83942884
		 -0.28323832 0.95734739 -0.16368456 1.76674545 0.25772724 1.62058163 0.25874355 1.61926103
		 0.52234948 1.76720452 0.5270471 1.7879653 0.52631414 1.7869333 0.25777957;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 38 ".vt[0:37]"  30.67372894 -0.82473755 158.13391113 30.67372894 9.00037384033 158.13391113
		 30.67372894 9.00037384033 109.37547302 30.67372894 -0.82473755 109.37547302 30.67372894 87.45669556 158.13391113
		 30.67372894 87.45669556 109.37547302 26.66382599 87.45669556 79.40924072 26.66382599 87.45669556 156.66882324
		 26.66382599 91.45669556 156.66882324 26.66382599 91.45669556 79.40924072 30.67372894 87.45669556 167.083145142
		 30.67372894 9.00037384033 167.083145142 238.34104919 9.00037384033 109.37547302 238.34104919 -0.82473755 109.37547302
		 26.66382599 87.45669556 170.84924316 26.66382599 91.45669556 170.84924316 238.34104919 87.45669556 109.37547302
		 238.34104919 -0.82473755 158.13391113 238.34104919 9.00037384033 158.13391113 242.37051392 91.45669556 79.40924072
		 242.37051392 87.45669556 79.40924072 238.34104919 9.00037384033 167.083145142 238.34104919 87.45669556 167.083145142
		 225.0031433105 91.45669556 119.28030396 157.84564209 91.45669556 119.28030396 157.84564209 67.88300323 119.28030396
		 225.0031433105 67.88300323 119.28030396 242.37051392 87.45669556 170.84924316 242.37051392 91.45669556 170.84924316
		 157.84564209 67.88300323 161.93087769 225.0031433105 67.88300323 161.93087769 238.34104919 87.45669556 158.13391113
		 157.84564209 91.45669556 161.93087769 225.0031433105 91.45669556 161.93087769 242.37051392 91.45669556 156.66882324
		 242.37051392 87.45669556 156.66882324 157.84564209 91.45669556 156.66882324 225.0031433105 91.45669556 156.66882324;
	setAttr -s 67 ".ed[0:66]"  0 1 0 1 2 0 2 3 0 3 0 0 1 4 0 4 5 0 5 2 0
		 6 7 0 7 8 0 8 9 0 9 6 0 10 4 0 1 11 0 11 10 0 4 7 0 6 5 0 2 12 0 12 13 0 13 3 0 14 7 0
		 10 14 0 14 15 0 15 8 0 5 16 0 16 12 0 17 18 0 18 1 0 0 17 0 9 19 0 19 20 0 20 6 0
		 21 11 0 18 21 0 20 16 0 22 10 0 21 22 0 12 18 0 17 13 0 23 24 0 24 25 0 25 26 0 26 23 0
		 27 14 0 22 27 0 27 28 0 28 15 0 25 29 0 29 30 0 30 26 0 16 31 0 31 18 0 32 33 0 33 30 0
		 29 32 0 31 22 0 34 35 0 35 20 0 19 34 0 35 31 0 35 27 0 34 28 0 24 36 0 36 32 0 33 37 0
		 37 23 0 8 36 0 37 34 0;
	setAttr -s 130 ".n[0:129]" -type "float3"  -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 0 -1 0 0 -1 0 0 -1 -4.0476276e-09 0 -1 -3.7690948e-09 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 -1 3.1575286e-08 0 -1 0 0 -1 0 0 -1 2.9885936e-08 -1 0 0 -1 0 0 -1 0 0 -1 0
		 0 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1
		 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 -4.0476276e-09 0 -1 -4.0475676e-09 0 -1 -3.7678727e-09
		 0 -1 -3.7690948e-09 0 0 1 0 0 1 0 0 1 0 0 1 1 0 0 1 0 0 1 0 0 1 0 0 0 0 1 0 0 1 0
		 0 1 0 0 1 0 -1 3.1568089e-08 0 -1 3.1575286e-08 0 -1 2.9885936e-08 0 -1 2.9878738e-08
		 0 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 1 0 0 0 0 -1 0
		 0 -1 0 0 -1 0 0 -1 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 0 -1 -4.0475676e-09
		 0 -1 0 0 -1 0 0 -1 -3.7678727e-09 0 -1 0 0 -1 0 0 -1 3.1568089e-08 0 -1 2.9878738e-08
		 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 -1 0 0 -1 0 0 -1 0 0 -1 0 0
		 -1 0 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0 1 0 0
		 1 0 0 1 0 0 1 0 0 1 0;
	setAttr -s 30 -ch 130 ".fc[0:29]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 10
		mu 0 4 6 7 8 9
		f 4 11 -5 12 13
		mu 0 4 10 4 1 11
		f 4 14 -8 15 -6
		mu 0 4 12 13 6 14
		f 4 16 17 18 -3
		mu 0 4 2 15 16 3
		f 4 19 -15 -12 20
		mu 0 4 17 13 12 18
		f 4 -9 -20 21 22
		mu 0 4 8 7 19 20
		f 4 23 24 -17 -7
		mu 0 4 5 21 15 2
		f 4 25 26 -1 27
		mu 0 4 22 23 1 0
		f 4 28 29 30 -11
		mu 0 4 9 24 25 6
		f 4 31 -13 -27 32
		mu 0 4 26 11 1 23
		f 4 -31 33 -24 -16
		mu 0 4 6 25 27 14
		f 4 34 -14 -32 35
		mu 0 4 28 10 11 26
		f 4 36 -26 37 -18
		mu 0 4 15 23 22 16
		f 4 38 39 40 41
		mu 0 4 29 30 31 32
		f 4 42 -21 -35 43
		mu 0 4 33 17 18 34
		f 4 -43 44 45 -22
		mu 0 4 19 35 36 20
		f 4 46 47 48 -41
		mu 0 4 31 37 38 32
		f 4 49 50 -37 -25
		mu 0 4 21 39 23 15
		f 4 51 52 -48 53
		mu 0 4 40 41 42 43
		f 4 -51 54 -36 -33
		mu 0 4 23 39 28 26
		f 4 55 56 -30 57
		mu 0 4 44 45 25 24
		f 4 -57 58 -50 -34
		mu 0 4 25 46 47 27
		f 4 -59 59 -44 -55
		mu 0 4 47 46 33 34
		f 4 -60 -56 60 -45
		mu 0 4 35 45 44 36
		f 5 -40 61 62 -54 -47
		mu 0 5 48 49 50 40 43
		f 5 -53 63 64 -42 -49
		mu 0 5 42 41 51 52 53
		f 8 65 -62 -39 -65 66 -58 -29 -10
		mu 0 8 8 54 55 56 57 44 24 9
		f 8 -46 -61 -67 -64 -52 -63 -66 -23
		mu 0 8 20 36 44 57 58 59 54 8;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".vbc" no;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "72AC0581-4799-257A-1980-84BA6F40EA14";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "80E6AFAB-478E-B16E-2488-4F9BACC7B1D5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "02B6E16D-46AD-07F2-C49F-E3AAEBC4C021";
createNode displayLayerManager -n "layerManager";
	rename -uid "068E714C-42F4-224E-69EE-2A9092985CAA";
createNode displayLayer -n "defaultLayer";
	rename -uid "2731FAC1-474B-435A-CD9C-99ADDF0E3D91";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8FE24EA0-4C57-556C-281F-69AA7BDF5718";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "044A435B-434C-58C8-99BE-C4BC4271ECD1";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "45AC0BDA-4077-88E3-69BF-DA87E2E4214F";
	setAttr ".version" -type "string" "5.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "12E77E3A-42E3-B7BE-5062-689A2C8EC157";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "DC0BC3FA-428F-1F86-A7DB-FDBC3943CC01";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "66AC2C1E-4643-7DCD-66DA-CBB6C14C2A1A";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode lambert -n "lambert2";
	rename -uid "5EFA6811-466B-C442-D4A6-C7916DC1F0DD";
createNode shadingEngine -n "pCube44SG";
	rename -uid "F4160A19-4A3F-C915-F4D4-04A9230E662B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "DDF38473-4777-CA10-05E1-DDBB4643D00A";
createNode lambert -n "lambert3";
	rename -uid "3AFA9033-4829-0276-5269-578140774BA5";
createNode shadingEngine -n "pCube43SG";
	rename -uid "4B9173E6-4BF5-814B-DC43-F89B4189A3CA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "C90496B1-4AC8-71E8-8091-AB91D686B66F";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "1370D969-48C8-2F9F-B1EC-09B094E8CE0B";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top|topShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side|sideShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front|frontShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n"
		+ "            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp|perspShape\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1725\n            -height 1061\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 1\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n"
		+ "            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n"
		+ "                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp|perspShape\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n"
		+ "\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1725\\n    -height 1061\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1725\\n    -height 1061\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "31FC35F1-421E-2F2A-0AF2-2C927F34EA62";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMapCut -n "polyMapCut1";
	rename -uid "CF9B45D7-41B1-36C0-58BB-3E947D001C95";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[35]" "e[43:44]";
createNode groupId -n "groupId1";
	rename -uid "7F1E0932-4BB2-5362-5DA2-9F8D96697B0D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "A8B0C07B-43EB-5310-D501-EBAFBE6EDEA4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 5 "f[0:14]" "f[16:17]" "f[19]" "f[21:25]" "f[28:29]";
createNode groupId -n "groupId2";
	rename -uid "41F37C71-4A6D-8B28-10FA-9E882A61A382";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "6B128140-469A-73A5-0A97-389091D545FF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[15]" "f[18]" "f[20]" "f[26:27]";
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "1FE10409-4D9B-E393-7D44-50948787A4FC";
	setAttr ".uopa" yes;
	setAttr -s 17 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.073578119 0.39323664 ;
	setAttr ".uvtk[1]" -type "float2" -0.032658666 0.40735823 ;
	setAttr ".uvtk[2]" -type "float2" -0.029369891 0.40426481 ;
	setAttr ".uvtk[3]" -type "float2" -0.024707615 0.40088439 ;
	setAttr ".uvtk[4]" -type "float2" 0.0095845461 0.015897304 ;
	setAttr ".uvtk[5]" -type "float2" 0.035422027 0.072327554 ;
	setAttr ".uvtk[10]" -type "float2" -0.00080886483 -0.0040490329 ;
	setAttr ".uvtk[11]" -type "float2" -0.12365967 0.44040114 ;
	setAttr ".uvtk[15]" -type "float2" -0.027665675 -0.23726153 ;
	setAttr ".uvtk[16]" -type "float2" -0.037026823 -0.23935652 ;
	setAttr ".uvtk[21]" -type "float2" 0.0020651817 -0.086567998 ;
	setAttr ".uvtk[22]" -type "float2" 0.0056034327 -0.2183063 ;
	setAttr ".uvtk[23]" -type "float2" -0.024024636 -0.20849824 ;
	setAttr ".uvtk[26]" -type "float2" -0.046416223 -0.2142483 ;
	setAttr ".uvtk[28]" -type "float2" 0.2870996 0.067300916 ;
	setAttr ".uvtk[39]" -type "float2" 0.24001002 0.010030866 ;
	setAttr ".uvtk[62]" -type "float2" -0.19397718 -0.47441649 ;
createNode polyMapCut -n "polyMapCut2";
	rename -uid "FB7D7950-48D5-E1D7-4A9C-AB81DFB782E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[25]" "e[32]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "6EF18874-4D8E-C919-B41A-1AB3ECA20166";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -1.2253795 0.022813447 ;
	setAttr ".uvtk[1]" -type "float2" -1.0559536 -0.01302696 ;
	setAttr ".uvtk[2]" -type "float2" -1.1692562 0.18060106 ;
	setAttr ".uvtk[3]" -type "float2" -1.1824434 0.18260258 ;
	setAttr ".uvtk[4]" -type "float2" -0.6450119 0.41274193 ;
	setAttr ".uvtk[5]" -type "float2" -1.1207458 0.48003516 ;
	setAttr ".uvtk[10]" -type "float2" -0.5528574 0.36213222 ;
	setAttr ".uvtk[11]" -type "float2" -0.92250001 -0.08111503 ;
	setAttr ".uvtk[15]" -type "float2" -0.63760465 0.57070589 ;
	setAttr ".uvtk[16]" -type "float2" -0.63466734 0.61147976 ;
	setAttr ".uvtk[21]" -type "float2" -0.61472052 0.098287344 ;
	setAttr ".uvtk[22]" -type "float2" -1.6932153 -0.89731312 ;
	setAttr ".uvtk[23]" -type "float2" -0.30633038 0.754004 ;
	setAttr ".uvtk[26]" -type "float2" -0.23114505 0.78797221 ;
	setAttr ".uvtk[28]" -type "float2" -0.11163837 0.1603303 ;
	setAttr ".uvtk[39]" -type "float2" -0.18638837 0.14203918 ;
	setAttr ".uvtk[62]" -type "float2" -0.97825748 -1.13359 ;
	setAttr ".uvtk[64]" -type "float2" -1.602989 -0.9533509 ;
	setAttr ".uvtk[65]" -type "float2" -1.5215876 -0.98075867 ;
	setAttr ".uvtk[66]" -type "float2" -0.40469468 0.80009258 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	rename -uid "DF0E4979-40B8-02F4-59BF-C19B8C778955";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[52:53]";
createNode polyMapSewMove -n "polyMapSewMove2";
	rename -uid "21BD5128-45EE-74AA-CB6F-37B3905FCFB9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[52]";
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "021E9F5A-4482-8822-7C51-328DECB4485F";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[41]" -type "float2" -4.0561421e-08 3.6852043e-08 ;
	setAttr ".uvtk[51]" -type "float2" -0.026686843 0.026321523 ;
	setAttr ".uvtk[57]" -type "float2" 0.020228717 -0.0024232687 ;
	setAttr ".uvtk[58]" -type "float2" -0.00014870355 -0.00012162573 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "AA7F05AA-42FF-7898-3924-A0A933059297";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak1";
	rename -uid "A4FE03B5-4BCD-5EE0-063D-BA8A5F5D812D";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[29]" -type "float3" 0 0 3.0755997e-05 ;
	setAttr ".tk[30]" -type "float3" 0 0 3.0755997e-05 ;
	setAttr ".tk[32]" -type "float3" 0 0 3.0755997e-05 ;
	setAttr ".tk[33]" -type "float3" 0 0 3.0755997e-05 ;
	setAttr ".tk[37]" -type "float3" 0 0 5.262085 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "0841BB54-425B-A0AF-CE10-368F52D7BD70";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[40]" -type "float2" 1.9752294e-08 -2.1571804e-08 ;
	setAttr ".uvtk[50]" -type "float2" 0.026686538 -0.026321577 ;
	setAttr ".uvtk[53]" -type "float2" 0.01975311 0.00042658905 ;
	setAttr ".uvtk[57]" -type "float2" -0.00042631692 0.0004904049 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "EED9BCF5-4673-09D8-0936-6188023D85EA";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak2";
	rename -uid "09626C68-41AE-2E77-C26F-148DADD5D000";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[36]" -type "float3" 0 0 5.262085 ;
createNode polySplit -n "polySplit1";
	rename -uid "337E3F65-4828-3CFD-AAAE-EABB70FDC215";
	setAttr -s 6 ".e[0:5]"  0 0.51606601 0.48393399 0.203141 0.203141
		 0.79685903;
	setAttr -s 6 ".d[0:5]"  -2147483610 -2147483591 -2147483592 -2147483599 -2147483612 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "28619552-4716-9B3D-EC03-B0AED67FB910";
	setAttr -s 6 ".e[0:5]"  1 0.48393399 0.51606601 0.79685903 0.79685903
		 0.203141;
	setAttr -s 6 ".d[0:5]"  -2147483610 -2147483639 -2147483641 -2147483643 -2147483647 -2147483645;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMapSewMove -n "polyMapSewMove3";
	rename -uid "858FAA58-4158-683B-AA2C-EDA9B2CFC657";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[47]" "e[52:53]";
createNode polyMapSewMove -n "polyMapSewMove4";
	rename -uid "659251A6-4660-65E1-6AEA-7F8FF0D79833";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[39]" "e[41]" "e[46]" "e[48]";
createNode polyMapCut -n "polyMapCut3";
	rename -uid "16046901-429E-15E9-33E2-72BD188F2DD3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[39:40]";
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "A8687691-452B-6711-3EFD-8EAACAC722BA";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[29]" -type "float2" -0.28586817 0.21777718 ;
	setAttr ".uvtk[30]" -type "float2" 0.53260005 -0.12743211 ;
	setAttr ".uvtk[31]" -type "float2" -0.18422525 -0.0096679926 ;
	setAttr ".uvtk[32]" -type "float2" -0.35623854 0.31292969 ;
	setAttr ".uvtk[37]" -type "float2" -0.26734599 -0.0048127472 ;
	setAttr ".uvtk[38]" -type "float2" -0.31719136 0.13699593 ;
	setAttr ".uvtk[40]" -type "float2" -0.21077052 0.033032924 ;
	setAttr ".uvtk[41]" -type "float2" -0.22678593 0.16541332 ;
	setAttr ".uvtk[71]" -type "float2" 0.46083993 -0.035759747 ;
	setAttr ".uvtk[72]" -type "float2" -0.30693382 0.0060889125 ;
createNode polyMapSewMove -n "polyMapSewMove5";
	rename -uid "1261C48F-4FF4-1377-B795-86A1DA82960D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[40]";
createNode polyMapCut -n "polyMapCut4";
	rename -uid "AF900424-475D-74A3-E204-CDAE72C440EF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[41]";
createNode polyTweakUV -n "polyTweakUV6";
	rename -uid "ADC09381-4171-E3D5-897A-D2AD3EC9B8CA";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[29]" -type "float2" 0.052269757 -0.15018474 ;
	setAttr ".uvtk[30]" -type "float2" -0.45573869 0.21435064 ;
	setAttr ".uvtk[31]" -type "float2" -0.17200395 0.0045334101 ;
	setAttr ".uvtk[32]" -type "float2" 0.092208505 -0.11929521 ;
	setAttr ".uvtk[37]" -type "float2" 0.082151979 0.007075429 ;
	setAttr ".uvtk[38]" -type "float2" 0.036268622 -0.07766521 ;
	setAttr ".uvtk[40]" -type "float2" 0.058148563 0.035055727 ;
	setAttr ".uvtk[41]" -type "float2" -0.0034180284 -0.08022809 ;
	setAttr ".uvtk[71]" -type "float2" 0.14578992 0.041935384 ;
	setAttr ".uvtk[72]" -type "float2" 0.1280368 0.089526519 ;
createNode polyMapCut -n "polyMapCut5";
	rename -uid "8DF9FB6F-428E-4959-F73C-AC8F55368F41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[46]" "e[48]";
createNode polyTweakUV -n "polyTweakUV7";
	rename -uid "25022155-487F-A44B-5565-FA9CAC43A256";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[29]" -type "float2" -0.051026464 -0.16766408 ;
	setAttr ".uvtk[30]" -type "float2" 0.059174985 0.049063563 ;
	setAttr ".uvtk[31]" -type "float2" -0.24900693 0.041356385 ;
	setAttr ".uvtk[32]" -type "float2" 0.042368293 0.098145336 ;
	setAttr ".uvtk[37]" -type "float2" 0.035692364 0.052407026 ;
	setAttr ".uvtk[38]" -type "float2" 0.091140717 0.043207645 ;
	setAttr ".uvtk[40]" -type "float2" 0.057515368 -0.0055940449 ;
	setAttr ".uvtk[41]" -type "float2" 0.050393611 0.068994008 ;
	setAttr ".uvtk[71]" -type "float2" -0.19191456 -0.099075675 ;
	setAttr ".uvtk[72]" -type "float2" 0.037285268 0.089890569 ;
	setAttr ".uvtk[73]" -type "float2" 0.049760044 -0.21947888 ;
	setAttr ".uvtk[74]" -type "float2" 0.068617284 0.048748136 ;
createNode polyMapCut -n "polyMapCut6";
	rename -uid "88F97C1C-4DD2-1E13-E255-2082F63991F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[10]" "e[29]";
createNode polyTweakUV -n "polyTweakUV8";
	rename -uid "E4A44D40-4E69-F6FA-F017-95AEDA0061A7";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" -0.065029263 0.010360286 ;
	setAttr ".uvtk[7]" -type "float2" -0.10466826 -0.13401267 ;
	setAttr ".uvtk[8]" -type "float2" -0.099787354 -0.13519174 ;
	setAttr ".uvtk[9]" -type "float2" -0.06494534 -0.0040526837 ;
	setAttr ".uvtk[12]" -type "float2" -0.01316154 0.16561678 ;
	setAttr ".uvtk[13]" -type "float2" -0.02196908 0.16496669 ;
	setAttr ".uvtk[14]" -type "float2" -0.040354609 0.068214223 ;
	setAttr ".uvtk[17]" -type "float2" -0.013997912 0.19304216 ;
	setAttr ".uvtk[18]" -type "float2" -0.00817132 0.18336828 ;
	setAttr ".uvtk[19]" -type "float2" -0.10914791 -0.16964233 ;
	setAttr ".uvtk[20]" -type "float2" -0.10527647 -0.16259032 ;
	setAttr ".uvtk[24]" -type "float2" 0.36183906 -0.10318834 ;
	setAttr ".uvtk[25]" -type "float2" 0.38330567 -0.096455753 ;
	setAttr ".uvtk[27]" -type "float2" 0.37027478 -0.041065753 ;
	setAttr ".uvtk[33]" -type "float2" 0.41250253 0.077733934 ;
	setAttr ".uvtk[34]" -type "float2" 0.40246999 0.06917268 ;
	setAttr ".uvtk[35]" -type "float2" 0.30460596 -0.30832011 ;
	setAttr ".uvtk[36]" -type "float2" 0.30608094 -0.29641673 ;
	setAttr ".uvtk[42]" -type "float2" 0.31641304 -0.27369541 ;
	setAttr ".uvtk[43]" -type "float2" 0.32489538 -0.27662843 ;
	setAttr ".uvtk[44]" -type "float2" 0.40456843 0.049607575 ;
	setAttr ".uvtk[45]" -type "float2" 0.39743352 0.05477494 ;
	setAttr ".uvtk[46]" -type "float2" 0.14786518 -0.23055117 ;
	setAttr ".uvtk[47]" -type "float2" 0.16959608 -0.14574555 ;
	setAttr ".uvtk[48]" -type "float2" 0.3037008 -0.18147135 ;
	setAttr ".uvtk[49]" -type "float2" 0.27722633 -0.27005589 ;
	setAttr ".uvtk[50]" -type "float2" 0.41254222 0.074414492 ;
	setAttr ".uvtk[51]" -type "float2" 0.29957581 -0.28716716 ;
	setAttr ".uvtk[53]" -type "float2" 0.40243042 0.072492123 ;
	setAttr ".uvtk[57]" -type "float2" 0.33930421 -0.1917913 ;
	setAttr ".uvtk[58]" -type "float2" 0.35405135 -0.19005007 ;
	setAttr ".uvtk[59]" -type "float2" 0.38370514 -0.023844123 ;
	setAttr ".uvtk[61]" -type "float2" 0.37577403 -0.021636605 ;
	setAttr ".uvtk[64]" -type "float2" -0.083438754 -0.073851585 ;
	setAttr ".uvtk[65]" -type "float2" -0.08394599 -0.076308042 ;
	setAttr ".uvtk[66]" -type "float2" -0.04280591 0.090232864 ;
	setAttr ".uvtk[68]" -type "float2" -0.034833312 0.088035405 ;
	setAttr ".uvtk[75]" -type "float2" 0.36152482 -0.10193366 ;
	setAttr ".uvtk[76]" -type "float2" -0.059128165 -0.011268973 ;
createNode polyMapSewMove -n "polyMapSewMove6";
	rename -uid "635F9108-432F-3692-3179-8DBC8BF45F0B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[43]";
createNode polyMapCut -n "polyMapCut7";
	rename -uid "493BE922-4229-1215-A450-33B3F2D08686";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[21]";
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "551558DE-46D0-5930-0689-0AA1AE1FEB50";
	setAttr ".uopa" yes;
	setAttr -s 39 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 0.0075317621 -0.0024465024 ;
	setAttr ".uvtk[7]" -type "float2" 0.0037654638 6.8545341e-05 ;
	setAttr ".uvtk[8]" -type "float2" 0.0061026812 -0.0013427734 ;
	setAttr ".uvtk[9]" -type "float2" 0.0076647997 -0.0021678805 ;
	setAttr ".uvtk[12]" -type "float2" 0.0047397614 -0.0074967965 ;
	setAttr ".uvtk[13]" -type "float2" 0.0050417185 -0.0075326115 ;
	setAttr ".uvtk[14]" -type "float2" 0.0063031912 -0.00435251 ;
	setAttr ".uvtk[17]" -type "float2" 0.0045858622 -0.008433938 ;
	setAttr ".uvtk[18]" -type "float2" 0.0044521093 -0.008065626 ;
	setAttr ".uvtk[19]" -type "float2" -0.014244318 -0.0090857744 ;
	setAttr ".uvtk[20]" -type "float2" 0.00446558 -0.0059456229 ;
	setAttr ".uvtk[24]" -type "float2" -0.0060912371 0.00097849965 ;
	setAttr ".uvtk[25]" -type "float2" -0.0066931248 0.0012973845 ;
	setAttr ".uvtk[27]" -type "float2" -0.006875515 -0.0010893345 ;
	setAttr ".uvtk[33]" -type "float2" -0.0091049671 -0.0031574965 ;
	setAttr ".uvtk[34]" -type "float2" -0.0087276697 -0.0030476451 ;
	setAttr ".uvtk[35]" -type "float2" 0.00090932846 0.01027599 ;
	setAttr ".uvtk[36]" -type "float2" 0.00071954727 0.0098063052 ;
	setAttr ".uvtk[42]" -type "float2" -0.0013811588 0.0095426142 ;
	setAttr ".uvtk[43]" -type "float2" -0.0020549297 0.0099042654 ;
	setAttr ".uvtk[44]" -type "float2" -0.0086290836 -0.003915906 ;
	setAttr ".uvtk[45]" -type "float2" -0.0084201097 -0.0041385889 ;
	setAttr ".uvtk[46]" -type "float2" 0.0037338734 0.0072448999 ;
	setAttr ".uvtk[47]" -type "float2" 0.0022881031 0.0033693612 ;
	setAttr ".uvtk[48]" -type "float2" -0.0022265911 0.0048071742 ;
	setAttr ".uvtk[49]" -type "float2" 0.0015199184 0.0088713169 ;
	setAttr ".uvtk[50]" -type "float2" -7.9154968e-05 0.010421485 ;
	setAttr ".uvtk[55]" -type "float2" -0.0045684576 0.0060082078 ;
	setAttr ".uvtk[56]" -type "float2" -0.0051887035 0.0063524246 ;
	setAttr ".uvtk[57]" -type "float2" -0.0074257851 -0.0015389323 ;
	setAttr ".uvtk[59]" -type "float2" -0.0071715117 -0.0016688108 ;
	setAttr ".uvtk[62]" -type "float2" 0.0073713064 0.00038039684 ;
	setAttr ".uvtk[63]" -type "float2" 0.0069611073 0.00070676208 ;
	setAttr ".uvtk[64]" -type "float2" 0.0062452555 -0.0051567256 ;
	setAttr ".uvtk[66]" -type "float2" 0.0059883595 -0.0050259829 ;
	setAttr ".uvtk[73]" -type "float2" -0.0062106848 0.00075668097 ;
	setAttr ".uvtk[74]" -type "float2" 0.0076491833 -0.0021156669 ;
	setAttr ".uvtk[75]" -type "float2" 0.0070540905 -0.0030671656 ;
createNode polyLayoutUV -n "polyLayoutUV1";
	rename -uid "AB4D0BCC-4B3C-B9D1-70AF-02B40420E344";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "f[2]" "f[4]" "f[6:7]" "f[10]" "f[12]" "f[16:17]" "f[22:25]" "f[28:32]" "f[35:37]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV2";
	rename -uid "79A5504E-4274-D867-7B1A-989E454BA1F0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[15]" "f[18]" "f[20]" "f[26:27]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyMapCut -n "polyMapCut8";
	rename -uid "EE318494-4483-FA53-9059-B48438F62051";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0]" "e[12]";
createNode polyTweakUV -n "polyTweakUV10";
	rename -uid "C3AB6D93-4E51-691A-D3B2-2B85CCC5AD72";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.037557006 0.030995607 ;
	setAttr ".uvtk[1]" -type "float2" -0.086627483 0.027215421 ;
	setAttr ".uvtk[2]" -type "float2" -0.024226099 0.039221048 ;
	setAttr ".uvtk[3]" -type "float2" -0.022574604 0.041554213 ;
	setAttr ".uvtk[4]" -type "float2" -0.051217437 0.0439955 ;
	setAttr ".uvtk[5]" -type "float2" -0.03963694 0.020095646 ;
	setAttr ".uvtk[10]" -type "float2" -0.052321464 0.050792336 ;
	setAttr ".uvtk[11]" -type "float2" -0.066891611 0.037841499 ;
	setAttr ".uvtk[15]" -type "float2" 0.038042903 -0.0048919916 ;
	setAttr ".uvtk[16]" -type "float2" 0.040188953 -0.0020148754 ;
	setAttr ".uvtk[21]" -type "float2" 0.020990789 -0.027947903 ;
	setAttr ".uvtk[22]" -type "float2" 0.022202134 -0.082463771 ;
	setAttr ".uvtk[23]" -type "float2" 0.052409157 -0.015563965 ;
	setAttr ".uvtk[26]" -type "float2" 0.055045307 -0.017528534 ;
	setAttr ".uvtk[28]" -type "float2" 0.037843525 -0.040579438 ;
	setAttr ".uvtk[39]" -type "float2" 0.035212159 -0.038617015 ;
	setAttr ".uvtk[51]" -type "float2" 0.073217571 -0.024953075 ;
	setAttr ".uvtk[52]" -type "float2" 0.028185368 -0.075404495 ;
	setAttr ".uvtk[53]" -type "float2" 0.033166051 -0.068809181 ;
	setAttr ".uvtk[54]" -type "float2" 0.054563791 -0.012673855 ;
	setAttr ".uvtk[58]" -type "float2" 0.023879707 -0.030115366 ;
	setAttr ".uvtk[60]" -type "float2" 0.04096128 -0.0070599318 ;
	setAttr ".uvtk[61]" -type "float2" 0.043109059 -0.0041800737 ;
	setAttr ".uvtk[65]" -type "float2" -0.041989401 0.024950683 ;
	setAttr ".uvtk[67]" -type "float2" -0.026173294 0.038521171 ;
	setAttr ".uvtk[68]" -type "float2" -0.025618076 0.03940928 ;
	setAttr ".uvtk[76]" -type "float2" -0.033811688 0.03577584 ;
	setAttr ".uvtk[77]" -type "float2" -0.090372801 0.022435188 ;
createNode polyLayoutUV -n "polyLayoutUV3";
	rename -uid "7D47F800-497D-37B3-5542-B4942CE6CB46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[0:1]" "f[3]" "f[5]" "f[8:9]" "f[11]" "f[13:14]" "f[19]" "f[21]" "f[33:34]" "f[38:39]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV11";
	rename -uid "543AC70F-4D67-3046-D03E-1DB8AA398F49";
	setAttr ".uopa" yes;
	setAttr -s 78 ".uvtk[0:77]" -type "float2" 0.33232766 -0.061031006 0.33204618
		 -0.058155082 0.32917032 -0.076699398 0.3323276 -0.076699398 0.30395848 -0.061030887
		 0.30395845 -0.076699398 -0.83088553 1.21082127 -0.83139396 1.2108463 -0.83139396
		 1.21082127 -0.83091056 1.21082127 0.30395848 -0.058155082 0.32917035 -0.058155142
		 -0.83039308 1.21079624 -0.83040214 1.21082127 -0.83069813 1.21079624 0.32917023 -0.14343324
		 0.33232751 -0.14343312 -0.83031344 1.21082139 -0.83033705 1.21079624 -0.83148265
		 1.2108463 -0.83148265 1.21082127 0.30395836 -0.14343312 0.33520356 0.0085786209 0.3291702
		 -0.15910172 -0.83091056 1.20947194 -0.83091056 1.20944691 0.3291702 -0.16197753 -0.83069801
		 1.20949709 0.3039583 -0.16197753 0.21582817 -0.015578676 0.36527115 -0.13782018 0.42333364
		 -0.047690507 0.27386802 -0.10572292 -0.83031344 1.20947182 -0.83033705 1.20949709
		 -0.83150768 1.20947182 -0.83148265 1.20947194 0.36528248 -0.047683205 0.2738753 -0.047671761
		 0.30395833 -0.15910172 0.36528653 -0.015597407 0.27387935 -0.015585948 -0.83139396
		 1.20947182 -0.83139396 1.20944667 -0.83040214 1.20947194 -0.83039296 1.20949721 -0.83142686
		 1.21000063 -0.83116007 1.21000063 -0.83115995 1.2095803 -0.83142686 1.20958042 -0.83148265
		 1.20944691 0.30395856 0.0085786954 0.33204627 0.0085786507 0.32917047 0.0085786059
		 0.33232749 -0.15910172 -0.83115995 1.20947182 -0.83115995 1.20944667 -0.83063602
		 1.20947182 0.30395836 -0.1466161 -0.83063602 1.20949709 0.32917023 -0.1466161 0.33232751
		 -0.1466161 -0.83116007 1.21082127 -0.83116007 1.2108463 -0.83063614 1.21082139 0.30395845
		 -0.073516518 -0.83063614 1.21079624 0.32917032 -0.073516518 0.33232763 -0.073516518
		 0.42333764 -0.015604679 0.27386409 -0.13780874 0.21582423 -0.047664519 0.36527526
		 -0.10573433 -0.83088553 1.2094717 -0.83091056 1.2108463 -0.83150768 1.21082127 0.32917035
		 -0.061030947 0.33520347 -0.058155082;
createNode polyMapCut -n "polyMapCut9";
	rename -uid "CE957540-453E-4439-EE95-4E96041B59C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[13]" "e[18]" "e[39]" "e[67]" "e[75]";
createNode polyTweakUV -n "polyTweakUV12";
	rename -uid "C4E805E4-4B99-9666-BA17-E9BA45D166C8";
	setAttr ".uopa" yes;
	setAttr -s 25 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" 0.0050148964 -0.005183816 ;
	setAttr ".uvtk[14]" -type "float2" 0.019215226 0.0023072958 ;
	setAttr ".uvtk[15]" -type "float2" 0.0024476051 -0.0042039156 ;
	setAttr ".uvtk[16]" -type "float2" -0.003823936 -0.0049982071 ;
	setAttr ".uvtk[18]" -type "float2" 0.0041427612 -0.00057065487 ;
	setAttr ".uvtk[19]" -type "float2" -0.0047342181 0.0022289157 ;
	setAttr ".uvtk[20]" -type "float2" 0.0039482117 -0.00095665455 ;
	setAttr ".uvtk[21]" -type "float2" 0.006603241 -0.0023397803 ;
	setAttr ".uvtk[22]" -type "float2" -0.0032553673 0.010408163 ;
	setAttr ".uvtk[23]" -type "float2" -0.0086278915 -0.0033393502 ;
	setAttr ".uvtk[24]" -type "float2" -0.004067421 0.0015873909 ;
	setAttr ".uvtk[30]" -type "float2" 0.0062148571 -0.0020799637 ;
	setAttr ".uvtk[34]" -type "float2" -0.0079877973 -0.0021996498 ;
	setAttr ".uvtk[41]" -type "float2" 0.034845114 0.0072100759 ;
	setAttr ".uvtk[42]" -type "float2" 0.0070800781 -0.0023456812 ;
	setAttr ".uvtk[43]" -type "float2" -0.0098887682 -0.0034954548 ;
	setAttr ".uvtk[47]" -type "float2" 0.006405592 -0.0016927123 ;
	setAttr ".uvtk[48]" -type "float2" -0.0086314678 -0.0015566349 ;
	setAttr ".uvtk[49]" -type "float2" -0.0031936169 -0.0050829649 ;
	setAttr ".uvtk[50]" -type "float2" 0.00015026331 -0.0030697584 ;
	setAttr ".uvtk[51]" -type "float2" 0.0046305656 -0.0050868988 ;
	setAttr ".uvtk[58]" -type "float2" -0.0005671978 0.010950446 ;
	setAttr ".uvtk[59]" -type "float2" -0.028169751 0.0082933903 ;
	setAttr ".uvtk[61]" -type "float2" -0.017751575 0.0052155256 ;
createNode polyLayoutUV -n "polyLayoutUV4";
	rename -uid "A370B602-4007-0865-D47C-45BBFA7A2F79";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[11:15]" "f[18:19]" "f[22]" "f[28:29]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV13";
	rename -uid "B384C2C3-4C39-9CA2-A334-95A253E96F1D";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[18]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[20]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[30]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[42]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[47]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[51]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[58]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[59]" -type "float2" 0.16618213 0 ;
	setAttr ".uvtk[61]" -type "float2" 0.16618213 0 ;
createNode polyMapCut -n "polyMapCut10";
	rename -uid "A35CCAE2-40A0-2DB1-BE40-FF8E1A635C5B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[11]" "e[17]";
createNode polyMapCut -n "polyMapCut11";
	rename -uid "1E56F71B-4C3E-4F4F-C12C-41951E92F2A7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[11]" "e[17]" "e[24]" "e[27]";
createNode polyMapCut -n "polyMapCut12";
	rename -uid "2A37178C-482B-85CE-0A65-D7A92CD45FEB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[11]" "e[17]" "e[24]" "e[27]";
createNode polyTweakUV -n "polyTweakUV14";
	rename -uid "F48497CC-48A8-5CE7-12AF-A8AEF468CA40";
	setAttr ".uopa" yes;
	setAttr -s 67 ".uvtk[0:66]" -type "float2" -0.22380206 0.120157 -0.2262356
		 0.12061191 -0.46240151 0.066398054 -0.22401759 0.067682624 -0.44254166 0.060063194
		 -0.22215629 0.062774897 -0.50330305 0.051389366 -0.49050242 0.045855403 -0.47990799
		 0.085626394 -0.45703316 0.26885402 -0.46649796 0.28147212 -0.40176022 0.27579334
		 -0.4025498 0.27925083 0 -1.1920929e-07 0 -2.3841858e-07 2.3841858e-07 -3.5762787e-07
		 5.9604645e-08 0 -0.40285754 0.28264317 0 -3.5762787e-07 0 1.1920929e-07 0 -4.1723251e-07
		 0 -1.7881393e-07 -1.1920929e-07 -1.1920929e-07 0 0 0 1.1920929e-07 -0.22785053 0.07749486
		 -0.48779309 0.051566601 -0.44886306 0.060552016 1.3113022e-06 -1.7881393e-07 1.6689301e-06
		 -2.9802322e-07 -2.3841858e-07 -2.3841858e-07 -0.23557737 0.08041954 -0.23801392 0.078876853
		 -1.3709068e-06 2.682209e-07 0 5.9604645e-08 -0.44946891 0.27144593 -0.45156598 0.2684139
		 -0.45383269 0.27643788 -0.48323193 0.049148425 -0.48354891 0.05190663 -0.47700962
		 0.079229698 -1.1920929e-07 -2.3841858e-07 0 -1.7881393e-07 0 0 1.4305115e-06 -2.9802322e-07
		 -1.4305115e-06 1.7881393e-07 -1.2516975e-06 2.9802322e-07 0 -2.3841858e-07 0 0 5.9604645e-08
		 0 5.9604645e-08 0 2.3841858e-07 -2.3841858e-07 -0.22108185 0.11985552 -0.44269001
		 0.24209619 -0.5281021 0.064118534 -0.21777192 0.047065377 1.3113022e-06 -3.5762787e-07
		 -1.4305115e-06 3.8743019e-07 -1.1920929e-07 7.1525574e-07 0 7.1525574e-07 -0.48021218
		 0.01804322 2.3841858e-07 7.1525574e-07 -0.48732507 0.036107332 -0.26566994 0.092733979
		 -0.23814309 0.078057766 -0.47301263 0.28414503 -0.49062276 0.28818831;
createNode polyMapCut -n "polyMapCut13";
	rename -uid "D2263A18-4D36-74A7-42A1-8F8156B83DB7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12]" "e[26]";
createNode polyTweakUV -n "polyTweakUV15";
	rename -uid "74CD799D-45F6-BF2E-6EC4-CB9E67BA8FD4";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 2.8312206e-07 -1.5497208e-06 ;
	setAttr ".uvtk[6]" -type "float2" 2.7380884e-06 2.682209e-07 ;
	setAttr ".uvtk[54]" -type "float2" 2.8535724e-06 4.1723251e-07 ;
	setAttr ".uvtk[55]" -type "float2" 3.1664968e-07 -1.5497208e-06 ;
	setAttr ".uvtk[60]" -type "float2" -2.3655593e-07 1.6093254e-06 ;
	setAttr ".uvtk[62]" -type "float2" -2.8312206e-07 1.5795231e-06 ;
	setAttr ".uvtk[65]" -type "float2" -2.8014183e-06 -2.9802322e-07 ;
	setAttr ".uvtk[66]" -type "float2" -2.682209e-06 -1.7881393e-07 ;
	setAttr ".uvtk[67]" -type "float2" -3.2037497e-07 1.5944242e-06 ;
	setAttr ".uvtk[68]" -type "float2" 2.771616e-06 1.7881393e-07 ;
	setAttr ".uvtk[69]" -type "float2" -2.8610229e-06 -4.1723251e-07 ;
	setAttr ".uvtk[70]" -type "float2" 2.4586916e-07 -1.6689301e-06 ;
createNode polyLayoutUV -n "polyLayoutUV5";
	rename -uid "B715AB28-4E7C-A209-1DE9-BA9C594057FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:31]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV16";
	rename -uid "B404B076-4840-C1AF-176D-C6BF6CD8C2BC";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.089592583 0.097737342 ;
	setAttr ".uvtk[6]" -type "float2" 0.61413622 -0.29852727 ;
	setAttr ".uvtk[54]" -type "float2" 0.61471403 -0.33057147 ;
	setAttr ".uvtk[55]" -type "float2" 0.089592583 0.097737342 ;
	setAttr ".uvtk[60]" -type "float2" 0.089592583 0.097737372 ;
	setAttr ".uvtk[62]" -type "float2" 0.089592583 0.097737342 ;
	setAttr ".uvtk[65]" -type "float2" -0.23123986 0.50970846 ;
	setAttr ".uvtk[66]" -type "float2" -0.23063612 0.47763947 ;
	setAttr ".uvtk[67]" -type "float2" 0.089592583 0.097737372 ;
	setAttr ".uvtk[68]" -type "float2" 0.62975621 -0.28218946 ;
	setAttr ".uvtk[69]" -type "float2" -0.21561992 0.52604622 ;
	setAttr ".uvtk[70]" -type "float2" 0.089592583 0.097737342 ;
createNode polyLayoutUV -n "polyLayoutUV6";
	rename -uid "9B84A975-4619-5313-1F79-07BE04BECD21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[7:8]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV17";
	rename -uid "FE61A839-4DCC-DAF3-59B9-C38FDAB005F8";
	setAttr ".uopa" yes;
	setAttr -s 7 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" -0.40316662 0.41538379 ;
	setAttr ".uvtk[54]" -type "float2" -0.40316662 0.41538379 ;
	setAttr ".uvtk[65]" -type "float2" -0.40316662 0.41538376 ;
	setAttr ".uvtk[66]" -type "float2" -0.40316662 0.41538376 ;
	setAttr ".uvtk[68]" -type "float2" -0.40316662 0.41538379 ;
	setAttr ".uvtk[69]" -type "float2" -0.40316662 0.41538376 ;
createNode polyMapSewMove -n "polyMapSewMove7";
	rename -uid "FD19166C-4D80-0102-2952-A999FF8981AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[68]" "e[71]";
createNode polySewEdge -n "polySewEdge1";
	rename -uid "C59ACBA6-4FB8-23BE-F485-96BBAD2E5C96";
	setAttr ".ics" -type "componentList" 2 "e[71]" "e[77]";
	setAttr ".ix" -type "matrix" 65 0 0 0 0 4 0 0 0 0 65 0 74.292465209960938 89.456306457519531 302.3785400390625 1;
	setAttr ".t" 200;
createNode polySewEdge -n "polySewEdge2";
	rename -uid "030218EE-4BFC-5953-70E3-22BB3B845142";
	setAttr ".ics" -type "componentList" 2 "e[68]" "e[73]";
	setAttr ".ix" -type "matrix" 65 0 0 0 0 4 0 0 0 0 65 0 74.292465209960938 89.456306457519531 302.3785400390625 1;
	setAttr ".t" 200;
createNode polyTweakUV -n "polyTweakUV18";
	rename -uid "F8967678-4719-5584-5D3C-8990D35CA59F";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" 0.079211712 -0.0072776079 ;
	setAttr ".uvtk[14]" -type "float2" 0.20863843 0.021977544 ;
	setAttr ".uvtk[15]" -type "float2" 0.17424846 -0.018087268 ;
	setAttr ".uvtk[16]" -type "float2" -0.099632859 -0.004817605 ;
	setAttr ".uvtk[18]" -type "float2" 0.15875244 -0.15432608 ;
	setAttr ".uvtk[19]" -type "float2" -0.17912567 -0.14297438 ;
	setAttr ".uvtk[20]" -type "float2" 0.16034698 -0.14030546 ;
	setAttr ".uvtk[21]" -type "float2" 0.06531024 -0.12949574 ;
	setAttr ".uvtk[22]" -type "float2" 0.21879578 -0.094879746 ;
	setAttr ".uvtk[23]" -type "float2" -0.089475572 -0.12167495 ;
	setAttr ".uvtk[24]" -type "float2" -0.18029091 -0.1295687 ;
	setAttr ".uvtk[28]" -type "float2" 0.345294 0.29989135 ;
	setAttr ".uvtk[29]" -type "float2" 0.25957632 0.26267618 ;
	setAttr ".uvtk[30]" -type "float2" 0.079346657 -0.13109225 ;
	setAttr ".uvtk[33]" -type "float2" 0.026644886 0.27182433 ;
	setAttr ".uvtk[34]" -type "float2" -0.10291576 -0.12284315 ;
	setAttr ".uvtk[41]" -type "float2" 0.28875446 0.10301632 ;
	setAttr ".uvtk[42]" -type "float2" 0.16244078 0.066629708 ;
	setAttr ".uvtk[43]" -type "float2" -0.031415999 0.074994028 ;
	setAttr ".uvtk[44]" -type "float2" -0.31418049 0.12059677 ;
	setAttr ".uvtk[45]" -type "float2" 0.077751637 -0.14511293 ;
	setAttr ".uvtk[46]" -type "float2" -0.10175055 -0.13624877 ;
	setAttr ".uvtk[47]" -type "float2" -0.11307317 -0.0059858561 ;
	setAttr ".uvtk[48]" -type "float2" -0.19044828 -0.012711406 ;
	setAttr ".uvtk[49]" -type "float2" 0.09324789 -0.0088740587 ;
	setAttr ".uvtk[54]" -type "float2" -0.2186439 0.31658027 ;
	setAttr ".uvtk[55]" -type "float2" -0.39565492 -0.077064574 ;
	setAttr ".uvtk[57]" -type "float2" -0.38175356 0.045153618 ;
createNode polyLayoutUV -n "polyLayoutUV7";
	rename -uid "77A55D93-4417-F267-DC5C-08A7500990A9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[11:15]" "f[18:19]" "f[22]" "f[28:31]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV19";
	rename -uid "F51D4889-462B-067E-FFA8-4EA68BF48584";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk";
	setAttr ".uvtk[13]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[14]" -type "float2" -0.61801827 -0.99917197 ;
	setAttr ".uvtk[15]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[16]" -type "float2" 0.7720961 0.080164313 ;
	setAttr ".uvtk[18]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[19]" -type "float2" 0.72553384 0.98553795 ;
	setAttr ".uvtk[20]" -type "float2" -1.6740831 0.92532319 ;
	setAttr ".uvtk[21]" -type "float2" -1.6740831 0.92532319 ;
	setAttr ".uvtk[22]" -type "float2" -1.0271652 -0.4722175 ;
	setAttr ".uvtk[23]" -type "float2" 0.36294895 0.60711867 ;
	setAttr ".uvtk[24]" -type "float2" 0.77247041 0.92508656 ;
	setAttr ".uvtk[28]" -type "float2" -1.181664 -0.39816839 ;
	setAttr ".uvtk[29]" -type "float2" -1.6740831 0.92532319 ;
	setAttr ".uvtk[30]" -type "float2" -1.6740831 0.92532319 ;
	setAttr ".uvtk[33]" -type "float2" 0.26895386 0.72817653 ;
	setAttr ".uvtk[34]" -type "float2" 0.42355609 0.65417653 ;
	setAttr ".uvtk[41]" -type "float2" -1.1347265 -0.45861924 ;
	setAttr ".uvtk[42]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[43]" -type "float2" 0.31589127 0.6677258 ;
	setAttr ".uvtk[44]" -type "float2" -1.6740831 0.92532319 ;
	setAttr ".uvtk[45]" -type "float2" -1.6740831 0.92532319 ;
	setAttr ".uvtk[46]" -type "float2" 0.37661964 0.71462762 ;
	setAttr ".uvtk[47]" -type "float2" 0.83270341 0.12722194 ;
	setAttr ".uvtk[48]" -type "float2" 1.1816175 0.39813221 ;
	setAttr ".uvtk[49]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[54]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[55]" -type "float2" -1.6740831 0.92532331 ;
	setAttr ".uvtk[57]" -type "float2" -1.6740831 0.92532331 ;
createNode polyLayoutUV -n "polyLayoutUV8";
	rename -uid "C2E6F2BB-476A-0EE0-6ADD-3AB29397C5D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[11]" "f[14:15]" "f[22]" "f[29]" "f[31]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV20";
	rename -uid "610C375F-41CC-6AB2-4C8D-32BC3F39BC50";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.14713621 0.022887846 ;
	setAttr ".uvtk[6]" -type "float2" 0.38582385 0.13078773 ;
	setAttr ".uvtk[14]" -type "float2" 0.065393925 -0.29100272 ;
	setAttr ".uvtk[16]" -type "float2" 0.065393925 -0.29100266 ;
	setAttr ".uvtk[19]" -type "float2" 0.065393865 -0.29100266 ;
	setAttr ".uvtk[22]" -type "float2" 0.065393925 -0.29100272 ;
	setAttr ".uvtk[23]" -type "float2" 0.065393925 -0.29100278 ;
	setAttr ".uvtk[24]" -type "float2" 0.065393865 -0.29100278 ;
	setAttr ".uvtk[28]" -type "float2" 0.065393865 -0.29100272 ;
	setAttr ".uvtk[33]" -type "float2" 0.065393865 -0.29100266 ;
	setAttr ".uvtk[34]" -type "float2" 0.065393925 -0.29100278 ;
	setAttr ".uvtk[41]" -type "float2" 0.065393865 -0.29100272 ;
	setAttr ".uvtk[43]" -type "float2" 0.065393865 -0.29100278 ;
	setAttr ".uvtk[46]" -type "float2" 0.065393865 -0.29100266 ;
	setAttr ".uvtk[47]" -type "float2" 0.065393925 -0.29100266 ;
	setAttr ".uvtk[48]" -type "float2" 0.065393925 -0.29100278 ;
	setAttr ".uvtk[52]" -type "float2" 0.38582385 0.13078773 ;
	setAttr ".uvtk[53]" -type "float2" 0.14713621 0.022887846 ;
	setAttr ".uvtk[56]" -type "float2" 0.14713621 0.022887846 ;
	setAttr ".uvtk[58]" -type "float2" 0.14713621 0.022887846 ;
	setAttr ".uvtk[61]" -type "float2" 0.38582385 0.13078764 ;
	setAttr ".uvtk[62]" -type "float2" 0.38582385 0.13078776 ;
	setAttr ".uvtk[63]" -type "float2" 0.14713621 0.022887846 ;
	setAttr ".uvtk[64]" -type "float2" 0.38582385 0.13078773 ;
	setAttr ".uvtk[65]" -type "float2" 0.38582385 0.13078764 ;
	setAttr ".uvtk[66]" -type "float2" 0.14713621 0.022887846 ;
createNode polyMapCut -n "polyMapCut14";
	rename -uid "18918E71-4605-D74B-20AF-1E8D1BFCC769";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[4]" "e[15]" "e[26]" "e[30]" "e[39]" "e[41]";
createNode polyMapSewMove -n "polyMapSewMove8";
	rename -uid "1E6BBF7E-4584-78C0-BE83-1B8BC419E99D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[8]";
createNode polyMapCut -n "polyMapCut15";
	rename -uid "8DFD5E6C-4576-94D6-E041-A88BD5B07C7F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[5]" "e[14]" "e[16]" "e[18:19]" "e[23:24]" "e[34]";
createNode polyMapSewMove -n "polyMapSewMove9";
	rename -uid "2A776D84-4831-0ACC-530F-D7BA9D36FEA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyTweakUV -n "polyTweakUV21";
	rename -uid "E8EBA9C1-4452-2E24-012F-56B4C3E33405";
	setAttr ".uopa" yes;
	setAttr -s 56 ".uvtk[0:55]" -type "float2" 0.29208243 0.013449587 0.28912294
		 -0.10767463 -0.22150075 0.33503377 0.044394135 -0.13949601 -0.32400155 0.32220721
		 0.41704786 2.073216915 -1.18555093 1.73814416 -0.3511436 0.20513034 -0.23116863 0.24017876
		 -0.90285891 1.37821579 -0.93227696 1.51249802 -0.77850306 0.55771387 0.75609064 0.27883112
		 3.13497376 1.98956418 -0.2904107 -1.22390354 3.32601166 2.83464432 -0.58391982 0.31999874
		 0.78860557 0.28169489 3.32115197 -0.40290594 3.58587193 0.054529905 3.13974071 0.32248974
		 2.44882059 2.50273466 1.70587373 0.65676355 1.97829473 1.038832068 0.10048604 -1.032262087
		 -1.16013885 -0.34537399 -1.21571195 1.68593907 1.03619349 1.89829159 0.80946922 0.68322563
		 -1.074624181 0.37352145 1.085239649 1.86878097 1.44299555 1.50790215 0.38448286 2.041627169
		 0.29138172 0.0508027 -0.8594296 1.33949459 0.038405657 -1.21780431 0.93406475 0.095269471
		 2.82092357 3.10932422 0.76535594 0.68659902 0.96174443 0.085597888 -1.21267724 1.87471509
		 0.99999893 2.026216984 0.66132426 0.66580796 -0.87279427 0.31180435 2.10831475 -1.60134804
		 -0.81451118 -0.37358284 2.45697689 -1.80274594 2.9065485 -0.11522329 -0.29412618
		 -1.07677269 0.95814741 -0.016291469 0.39578116 2.16367745 2.96741867 2.1364336 1.76998639
		 0.52356035 3.29213762 1.052885771 0.13694441 0.090959549 0.65091121 0.27781272;
createNode polyLayoutUV -n "polyLayoutUV9";
	rename -uid "0B0B441A-46A3-6490-C4B3-9EB80D57F757";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV22";
	rename -uid "124CDDDB-4172-31A1-83B8-EC8EA8DCBD45";
	setAttr ".uopa" yes;
	setAttr -s 56 ".uvtk[0:55]" -type "float2" -0.9278478 0.20200747 -0.9673714
		 0.20200121 -0.85922402 -0.46364471 -1.28500259 -0.34625348 -0.85924828 -0.34616551
		 -0.0054603815 -0.80993736 0.88228267 -0.80997384 -0.9767276 -0.34618977 -0.97670329
		 -0.46366891 0.20470555 -1.032783866 0.20464964 -1.098478436 -0.85932571 0.027914338
		 -1.46207309 -1.54188108 -1.68307281 -1.46157706 0.18707651 0.078932613 -2.67072654
		 -2.37225699 -0.43860799 -0.34053221 -1.46207225 -1.54910874 -1.82690334 -0.75209111
		 -1.82687402 -0.955625 -1.62333989 -0.95559543 -2.44578123 -1.32348275 -0.80980831
		 -1.013871551 -1.10170364 -0.95551938 -0.18707645 -0.078932583 -0.32843238 -0.18244994
		 0.90324879 -0.78919375 -0.87253594 -1.031865716 -1.35187364 -1.5490942 -0.32840917
		 -0.34051588 -0.89329875 -1.010882497 -0.8097766 -1.46151507 0.015240192 -0.78915775
		 -0.91539425 0.20200941 0.18390991 -1.011800885 -0.18699169 0.079133406 -0.91536444
		 0.010977428 -2.10496998 -2.13451576 -1.34459424 -1.54186559 -0.92781585 -0.0015267581
		 0.88227999 -0.87566841 -0.87259173 -1.097560525 -1.34459722 -1.51905274 -0.97680497
		 0.027889989 -1.63607526 -0.11648817 -0.43863121 -0.18246615 -1.82699585 -0.1165158
		 -1.63598084 -0.76456553 0.18699163 -0.079133391 -0.96733946 -0.001532957 -0.0054628849
		 -0.87563217 -3.011537313 -1.56122363 -1.1017313 -0.7644878 -1.68310475 -1.013933539
		 -1.28497839 -0.46373269 -1.46207619 -1.51906836;
createNode polyLayoutUV -n "polyLayoutUV10";
	rename -uid "3E6667C5-42C2-433C-8DDB-AD91F1A28B1B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[15]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV23";
	rename -uid "718FB4BC-4233-EC24-79A9-B9A2F1A2D07E";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" 0.039702125 -0.30556393 ;
	setAttr ".uvtk[25]" -type "float2" -0.039702028 0.30556381 ;
	setAttr ".uvtk[29]" -type "float2" 0.30043811 -0.068428636 ;
	setAttr ".uvtk[45]" -type "float2" -0.30043784 0.068428397 ;
createNode polyLayoutUV -n "polyLayoutUV11";
	rename -uid "0F50CF18-444B-CA56-4119-A29A64B3428A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyLayoutUV -n "polyLayoutUV12";
	rename -uid "B677025D-4DDD-A514-8DEE-FEA0CA761C89";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".fr" no;
	setAttr ".l" 0;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".sc" 0;
	setAttr ".dl" yes;
	setAttr ".rbf" 3;
	setAttr ".lm" 1;
createNode polyTweakUV -n "polyTweakUV24";
	rename -uid "EA27CD46-45F9-FD0C-0387-3A9C53862334";
	setAttr ".uopa" yes;
	setAttr -s 21 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" -1.3684697 -0.34429646 ;
	setAttr ".uvtk[6]" -type "float2" -1.3684697 -0.34429646 ;
	setAttr ".uvtk[9]" -type "float2" -0.42274383 -0.06537278 ;
	setAttr ".uvtk[10]" -type "float2" -0.42274383 -0.06537278 ;
	setAttr ".uvtk[15]" -type "float2" 0.29635647 0.0087163365 ;
	setAttr ".uvtk[16]" -type "float2" 0.36608744 0.31378931 ;
	setAttr ".uvtk[21]" -type "float2" 0.2963565 0.0087163365 ;
	setAttr ".uvtk[25]" -type "float2" 0.36608744 0.31378931 ;
	setAttr ".uvtk[26]" -type "float2" -1.3684697 -0.34429646 ;
	setAttr ".uvtk[27]" -type "float2" -0.42274386 -0.06537278 ;
	setAttr ".uvtk[29]" -type "float2" 0.36608744 0.31378931 ;
	setAttr ".uvtk[30]" -type "float2" -0.42274386 -0.06537278 ;
	setAttr ".uvtk[32]" -type "float2" -1.3684697 -0.34429646 ;
	setAttr ".uvtk[34]" -type "float2" -0.42274383 -0.06537278 ;
	setAttr ".uvtk[37]" -type "float2" 0.29635647 0.0087163365 ;
	setAttr ".uvtk[40]" -type "float2" -1.3684697 -0.34429646 ;
	setAttr ".uvtk[41]" -type "float2" -0.42274386 -0.06537278 ;
	setAttr ".uvtk[45]" -type "float2" 0.36608744 0.31378919 ;
	setAttr ".uvtk[50]" -type "float2" -1.3684697 -0.34429646 ;
	setAttr ".uvtk[51]" -type "float2" 0.29635653 0.0087163365 ;
createNode blinn -n "grannet";
	rename -uid "D8B409AF-4B9E-3FE4-FAB6-B4B5F32A4736";
	setAttr ".c" -type "float3" 1 1 1 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "CB0C63AD-4819-4CB4-F0C8-EBAE2851FA2F";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo3";
	rename -uid "FA15B933-4E13-EFFA-2DAA-3A904832BB13";
createNode groupParts -n "groupParts3";
	rename -uid "B65F1E18-4E9E-27A1-5D64-5492157C2BF1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 10 "f[0:1]" "f[3]" "f[5]" "f[8:9]" "f[11]" "f[13:14]" "f[19]" "f[21]" "f[33:34]" "f[38:39]";
	setAttr ".irc" -type "componentList" 9 "f[2]" "f[4]" "f[6:7]" "f[10]" "f[12]" "f[16:17]" "f[22:25]" "f[28:32]" "f[35:37]";
createNode groupId -n "groupId3";
	rename -uid "77D649D3-4A88-17DC-B399-188ABFE80F61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "CC518DED-4FA1-06C2-08C5-71B992826829";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 9 "f[2]" "f[4]" "f[6:7]" "f[10]" "f[12]" "f[16:17]" "f[22:25]" "f[28:32]" "f[35:37]";
createNode groupId -n "groupId4";
	rename -uid "D93991C0-4769-C6CA-463A-008D6C92B1CB";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "6310B175-4FC6-E74B-BC73-7B9D91593AE5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[11:15]" "f[18:19]" "f[22]" "f[28:31]";
	setAttr ".irc" -type "componentList" 4 "f[0:10]" "f[16:17]" "f[20:21]" "f[23:27]";
createNode groupId -n "groupId5";
	rename -uid "3E69C10E-4C28-D326-CE35-7DA0AD1B8D85";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "978AE659-4CFE-D76C-6DC6-AD9DC4617FF3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "17A581D3-4837-9A58-F74B-26B2A1E22244";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0:10]" "f[16:17]" "f[20:21]" "f[23:27]";
createNode lambert -n "cabinenty_wood";
	rename -uid "8B663693-4D18-922B-A988-858B4A1C20B9";
	setAttr ".c" -type "float3" 1 0.98892319 0.90399998 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "C2DF8CE0-4959-A8FB-1268-39B627798290";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo4";
	rename -uid "DC21E1E1-4B1D-F37A-2D3D-649009FF5C36";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId4.id" "lowerShape.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "lowerShape.iog.og[0].gco";
connectAttr "groupId6.id" "lowerShape.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "lowerShape.iog.og[1].gco";
connectAttr "groupParts6.og" "lowerShape.i";
connectAttr "polyTweakUV20.uvtk[0]" "lowerShape.uvst[0].uvtw";
connectAttr "groupId5.id" "lowerShape.ciog.cog[0].cgid";
connectAttr "polyTweakUV24.out" "upperShape.i";
connectAttr "polyTweakUV24.uvtk[0]" "upperShape.uvst[0].uvtw";
connectAttr "groupId1.id" "islandShape.iog.og[0].gid";
connectAttr "lambert4SG.mwc" "islandShape.iog.og[0].gco";
connectAttr "groupId2.id" "islandShape.iog.og[1].gid";
connectAttr "blinn1SG.mwc" "islandShape.iog.og[1].gco";
connectAttr "groupId3.id" "islandShape.iog.og[2].gid";
connectAttr "blinn1SG.mwc" "islandShape.iog.og[2].gco";
connectAttr "groupParts4.og" "islandShape.i";
connectAttr "polyTweakUV11.uvtk[0]" "islandShape.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube44SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube43SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube44SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube43SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "lambert2.oc" "pCube44SG.ss";
connectAttr "lowerShape.ciog.cog[0]" "pCube44SG.dsm" -na;
connectAttr "groupId5.msg" "pCube44SG.gn" -na;
connectAttr "pCube44SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "lambert3.oc" "pCube43SG.ss";
connectAttr "pCube43SG.msg" "materialInfo2.sg";
connectAttr "lambert3.msg" "materialInfo2.m";
connectAttr "groupParts2.og" "polyMapCut1.ip";
connectAttr "polySurfaceShape1.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "polyMapCut1.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyTweakUV3.ip";
connectAttr "polyTweak1.out" "polyMergeVert1.ip";
connectAttr "islandShape.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV3.out" "polyTweak1.ip";
connectAttr "polyMergeVert1.out" "polyTweakUV4.ip";
connectAttr "polyTweak2.out" "polyMergeVert2.ip";
connectAttr "islandShape.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV4.out" "polyTweak2.ip";
connectAttr "polyMergeVert2.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyLayoutUV1.ip";
connectAttr "polyLayoutUV1.out" "polyLayoutUV2.ip";
connectAttr "polyLayoutUV2.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyLayoutUV3.ip";
connectAttr "polyLayoutUV3.out" "polyTweakUV11.ip";
connectAttr "polySurfaceShape2.o" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "polyLayoutUV4.ip";
connectAttr "polyLayoutUV4.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyLayoutUV5.ip";
connectAttr "polyLayoutUV5.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyLayoutUV6.ip";
connectAttr "polyLayoutUV6.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polySewEdge1.ip";
connectAttr "lowerShape.wm" "polySewEdge1.mp";
connectAttr "polySewEdge1.out" "polySewEdge2.ip";
connectAttr "lowerShape.wm" "polySewEdge2.mp";
connectAttr "polySewEdge2.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyLayoutUV7.ip";
connectAttr "polyLayoutUV7.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyLayoutUV8.ip";
connectAttr "polyLayoutUV8.out" "polyTweakUV20.ip";
connectAttr "polySurfaceShape3.o" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyLayoutUV9.ip";
connectAttr "polyLayoutUV9.out" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyLayoutUV10.ip";
connectAttr "polyLayoutUV10.out" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyLayoutUV11.ip";
connectAttr "polyLayoutUV11.out" "polyLayoutUV12.ip";
connectAttr "polyLayoutUV12.out" "polyTweakUV24.ip";
connectAttr "grannet.oc" "blinn1SG.ss";
connectAttr "groupId3.msg" "blinn1SG.gn" -na;
connectAttr "groupId2.msg" "blinn1SG.gn" -na;
connectAttr "groupId6.msg" "blinn1SG.gn" -na;
connectAttr "islandShape.iog.og[2]" "blinn1SG.dsm" -na;
connectAttr "islandShape.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "lowerShape.iog.og[1]" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo3.sg";
connectAttr "grannet.msg" "materialInfo3.m";
connectAttr "polyTweakUV11.out" "groupParts3.ig";
connectAttr "groupId1.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId3.id" "groupParts4.gi";
connectAttr "polyTweakUV20.out" "groupParts5.ig";
connectAttr "groupId4.id" "groupParts5.gi";
connectAttr "groupParts5.og" "groupParts6.ig";
connectAttr "groupId6.id" "groupParts6.gi";
connectAttr "cabinenty_wood.oc" "lambert4SG.ss";
connectAttr "lowerShape.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "islandShape.iog.og[0]" "lambert4SG.dsm" -na;
connectAttr "upperShape.iog" "lambert4SG.dsm" -na;
connectAttr "groupId4.msg" "lambert4SG.gn" -na;
connectAttr "groupId1.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo4.sg";
connectAttr "cabinenty_wood.msg" "materialInfo4.m";
connectAttr "pCube44SG.pa" ":renderPartition.st" -na;
connectAttr "pCube43SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "grannet.msg" ":defaultShaderList1.s" -na;
connectAttr "cabinenty_wood.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of counters and cabinents.ma
