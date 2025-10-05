//Constant //change with care!

D1 = 1;           //diamter of jet
D2 = 20;          //diamter of first square
D3 = 1.35*D2;     // do not change         
D4 = 50;          //diamter of cyl



coarse_fac = 0.85;



// depth of the tank
depth = 50;
depth2 = 5;

depth_ex = 10;




scale = 0.5;
alpha = Cos(Pi/4);
beta = Sin(Pi/4);

fac1 = 90;
alpha1 = Cos(Pi/fac1);
beta1 = Sin(Pi/fac1);

alpha2 = Sin(Pi/fac1);
beta2 = Cos(Pi/fac1);



fac2 = 1.5;

alpha11 = Cos(Pi/(fac1/fac2));
beta11 = Sin(Pi/(fac1/fac2));
alpha22 = Sin(Pi/(fac1/fac2));
beta22 = Cos(Pi/(fac1/fac2));




r = (((0.5^2)+(0.5^2))^0.5)*scale;
r2 = r * 1.1;
sq1 = 4;
s = 0.55*scale;
RB = ((((0.95/2)^2)+((0.95/2)^2))^0.5)*scale;
lambda = 0.3/2; 
y = 1;



// number of grids in each directions
np1 = 14;           // middel of circle
np2 = 4;            // outer1 of circle 
np3 = 2;            // outer2 of circle 
np4 = 2;            // jet wall 
npsq = 65/coarse_fac;          // inner square
npcir = 20/1;         // inner Circle


// Compaction factros
comp1 = 1;
comp2 = 0.8;
comp3 = 0.99;
comp4 = 1.1;
comp5 = 1.5;
comp6 = 1.01;

compsq = 1.0125;
compcir = 1.1;




// Extrude constants

xx1 = 4/coarse_fac;
xx2 = 20/coarse_fac; 
xx3 = 2/coarse_fac; 
xx4 = 2; 
xx5 = 3; 
xx6 = 2; 
xx7 = 1; 
xx8 = 1; 

t1 = 1.8;
t2 = 1.1;
t3 = 1.25;
t4 = 1.43;
t5 = 1.5;
t6 = 1.2;
t7 = 1.15;
t8 = 1;

/////////////////////////////////////////////////////////////
/////////////////          points           /////////////////
/////////////////////////////////////////////////////////////

Point(1) = {0, 0, 0};
Point(2) = {-s, 0, -s};
Point(3) = {s, 0, -s};
Point(4) = {s, 0, s};
Point(5) = {-s, 0, s};

Point(6) = {-RB, 0, -RB};
Point(7) = {RB, 0, -RB};
Point(8) = {RB, 0, RB};
Point(9) = {-RB, 0, RB};




Point(10) = {-D1/2*alpha, 0, -D1/2*beta};
Point(11) = {D1/2*alpha, 0, -D1/2*beta};
Point(12) = {D1/2*alpha, 0, D1/2*beta};
Point(13) = {-D1/2*alpha, 0, D1/2*beta};

Point(14) = {-r2, 0, -r2};
Point(15) = {r2, 0, -r2};
Point(16) = {r2, 0, r2};
Point(17) = {-r2, 0, r2};










Point(18) = {-D3/2*alpha, 0, -D3/2*beta};
Point(19) = {D3/2*alpha, 0, -D3/2*beta};
Point(20) = {D3/2*alpha, 0, D3/2*beta};
Point(21) = {-D3/2*alpha, 0, D3/2*beta};

Point(22) = {-D2/2*alpha11, 0, -D2/2*beta11};
Point(23) = {D2/2*alpha11, 0, -D2/2*beta11};
Point(24) = {D2/2*alpha11, 0, D2/2*beta11};
Point(25) = {-D2/2*alpha11, 0, D2/2*beta11};


Point(26) = {-D2/2*alpha22, 0, -D2/2*beta22};
Point(27) = {D2/2*alpha22, 0, -D2/2*beta22};
Point(28) = {D2/2*alpha22, 0, D2/2*beta22};
Point(29) = {-D2/2*alpha22, 0, D2/2*beta22};


Point(30) = {lambda, 0, 0};
Point(31) = {-lambda, 0, 0};
Point(32) = {0, 0, lambda};
Point(33) = {0, 0, -lambda};



/////////////////
Point(34) = {-D4/2*alpha, 0, -D4/2*beta};
Point(35) = {D4/2*alpha, 0, -D4/2*beta};
Point(36) = {D4/2*alpha, 0, D4/2*beta};
Point(37) = {-D4/2*alpha, 0, D4/2*beta};

Point(38) = {-D4/2*alpha1, 0, -D4/2*beta1};
Point(39) = {D4/2*alpha1, 0, -D4/2*beta1};
Point(40) = {D4/2*alpha1, 0, D4/2*beta1};
Point(41) = {-D4/2*alpha1, 0, D4/2*beta1};

Point(42) = {-D4/2*alpha2, 0, -D4/2*beta2};
Point(43) = {D4/2*alpha2, 0, -D4/2*beta2};
Point(44) = {D4/2*alpha2, 0, D4/2*beta2};
Point(45) = {-D4/2*alpha2, 0, D4/2*beta2};








/////////////////////////////////////////////////////////////
/////////////////           lines           /////////////////
/////////////////////////////////////////////////////////////

Circle(1) = {2, 32, 3};
Circle(2) = {3, 31, 4};
Circle(3) = {4, 33, 5};
Circle(4) = {5, 30, 2};

//Nozzle curves
Circle(5) = {6, 1, 7};
Circle(6) = {7, 1, 8};
Circle(7) = {8, 1, 9};
Circle(8) = {9, 1, 6}; 

Circle(9) = {10, 1, 11};
Circle(10) = {11, 1, 12};
Circle(11) = {12, 1, 13};
Circle(12) = {13, 1, 10};
 
Circle(13) = {14, 1, 15};
Circle(14) = {15, 1, 16};
Circle(15) = {16, 1, 17};
Circle(16) = {17, 1, 14};


Line(17) = {2, 6};
Line(18) = {3, 7};
Line(19) = {4, 8};
Line(20) = {5, 9};
Line(21) = {6, 10};
Line(22) = {7, 11};
Line(23) = {8, 12};
Line(24) = {9, 13};
Line(25) = {10, 14};
Line(26) = {11, 15};
Line(27) = {12, 16};
Line(28) = {13, 17};
Line(29) = {14, 22};
Line(30) = {14, 26};
Line(31) = {15, 27};
Line(32) = {15, 23};
Line(33) = {16, 24};
Line(34) = {16, 28};
Line(35) = {17, 29};
Line(36) = {17, 25};
Line(37) = {18, 26};
Line(38) = {26, 27};
Line(39) = {27, 19};
Line(40) = {19, 23};
Line(41) = {23, 24};
Line(42) = {24, 20};
Line(43) = {20, 28};
Line(44) = {28, 29};
Line(45) = {29, 21};
Line(46) = {21, 25};
Line(47) = {25, 22};
Line(48) = {22, 18};
Line(49) = {18, 34};
Line(50) = {19, 35};
Line(51) = {20, 36};
Line(52) = {21, 37};
Line(53) = {26, 42};
Line(54) = {27, 43};
Line(55) = {23, 39};
Line(56) = {24, 40};
Line(57) = {28, 44};
Line(58) = {29, 45};
Line(59) = {25, 41};
Line(60) = {22, 38};





Circle(61) = {34, 1, 42};
Circle(62) = {42, 1, 43};
Circle(63) = {43, 1, 35};
Circle(64) = {35, 1, 39};
Circle(65) = {39, 1, 40};
Circle(66) = {40, 1, 36};
Circle(67) = {36, 1, 44};
Circle(68) = {44, 1, 45};
Circle(69) = {45, 1, 37};
Circle(70) = {37, 1, 41};
Circle(71) = {41, 1, 38};
Circle(72) = {38, 1, 34};

/////////////////////////////////////////////////////////////
/////////////////         surfaces          /////////////////
/////////////////////////////////////////////////////////////

Curve Loop(1) = {3, 4, 1, 2};
Plane Surface(1) = {1};
Curve Loop(2) = {20, 8, -17, -4};
Plane Surface(2) = {2};
Curve Loop(3) = {17, 5, -18, -1};
Plane Surface(3) = {3};

Curve Loop(4) = {2, 19, -6, -18};
Plane Surface(4) = {4};
Curve Loop(5) = {3, 20, -7, -19};
Plane Surface(5) = {5};
Curve Loop(6) = {12, -21, -8, 24};
Plane Surface(6) = {6};
Curve Loop(7) = {21, 9, -22, -5};
Plane Surface(7) = {7};
Curve Loop(8) = {6, 23, -10, -22};
Plane Surface(8) = {8};

Curve Loop(9) = {7, 24, -11, -23};
Plane Surface(9) = {9};
Curve Loop(10) = {16, -25, -12, 28};
Plane Surface(10) = {10};
Curve Loop(11) = {25, 13, -26, -9};
Plane Surface(11) = {11};
Curve Loop(12) = {10, 27, -14, -26};
Plane Surface(12) = {12};
Curve Loop(13) = {11, 28, -15, -27};
Plane Surface(13) = {13};
Curve Loop(14) = {16, 29, -47, -36};
Plane Surface(14) = {14};
Curve Loop(15) = {29, 48, 37, -30};
Plane Surface(15) = {15};
Curve Loop(16) = {13, 31, -38, -30};
Plane Surface(16) = {16};
Curve Loop(17) = {31, 39, 40, -32};
Plane Surface(17) = {17};
Curve Loop(18) = {14, 33, -41, -32};
Plane Surface(18) = {18};


Curve Loop(19) = {33, 42, 43, -34};
Plane Surface(19) = {19};
Curve Loop(20) = {15, 35, -44, -34};
Plane Surface(20) = {20};
Curve Loop(21) = {35, 45, 46, -36};
Plane Surface(21) = {21};
Curve Loop(22) = {48, 49, -72, -60};
Plane Surface(22) = {22};



Curve Loop(23) = {37, 53, -61, -49};
Plane Surface(23) = {23};
Curve Loop(24) = {53, 62, -54, -38};
Plane Surface(24) = {24};
Curve Loop(25) = {54, 63, -50, -39};
Plane Surface(25) = {25};
Curve Loop(26) = {40, 55, -64, -50};
Plane Surface(26) = {26};
Curve Loop(27) = {41, 56, -65, -55};
Plane Surface(27) = {27};
Curve Loop(28) = {42, 51, -66, -56};
Plane Surface(28) = {28};



Curve Loop(29) = {43, 57, -67, -51};
Plane Surface(29) = {29};
Curve Loop(30) = {44, 58, -68, -57};
Plane Surface(30) = {30};
Curve Loop(31) = {45, 52, -69, -58};
Plane Surface(31) = {31};
Curve Loop(32) = {46, 59, -70, -52};
Plane Surface(32) = {32};
Curve Loop(33) = {47, 60, -71, -59};
Plane Surface(33) = {33};





/////////////////////////////////////////////////////////////
/////////////////        Descritize         /////////////////
/////////////////////////////////////////////////////////////

Transfinite Curve {4, 1, 2, 7, 15, 16, 12, 8, 3, 11, 6, 10, 14, 5, 9, 13, 38, 62, 74, 110, 133, 109, 83, 71, 47, 41, 44, 80, 68, 112, 136,135, 111, 134, 65, 77} = np1 Using Progression comp1;  //number of grids in inner circle of jet

Transfinite Curve{17:20} = np2 Using Progression comp2;  //number of grids in first layer of jet boundary

Transfinite Curve{21:24} = np3 Using Progression comp3;  //number of grids in second layer of jet boundary

Transfinite Curve{25:28} = np4 Using Progression comp4;  //number of grids in jet wall 

Transfinite Curve {29:36} = npsq Using Progression compsq; // inner square

Transfinite Curve {39, -40, -37, 48, -46, 45, -43, 79, -67, 78, 66, 42, -64, 76, 75, 63, -61, 73, 84, 72, 82, -70, 81, 69, 113, 114, 145, 144, 120, 143, 119, 142, 118, 140, 117, 139, 116, 138, 115, 137} = npsq Using Progression 1.01; // inner square

Transfinite Curve {52, 59, 60, 49, 53, 54, 50, 55, 56, 51, 57, 58} = npcir Using Progression compcir; // confinement
 

// do not change
Transfinite Surface{1:69};
Recombine Surface{1:69};




/////////////////////////////////////////////////////////////
/////////////////    Extrude constants      /////////////////
/////////////////////////////////////////////////////////////
// do not change

d1[]={xx1,xx1,xx1,xx1,xx1};
di1[]={(0.2^t1)*y,(0.4^t1)*y,(0.6^t1)*y,(0.8^t1)*y,(1*y)};


d2[]={xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,
		xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2};
di2[]={(0.05^t2)*y,(0.1^t2)*y,(0.15^t2)*y,(0.2^t2)*y,(0.25^t2)*y,
       (0.3^t2)*y,(0.35^t2)*y,(0.4^t2)*y,(0.45^t2)*y,(0.5^t2)*y,
       (0.55^t2)*y,(0.6^t2)*y,(0.65^t2)*y,(0.7^t2)*y,(0.75^t2)*y,
       (0.8^t2)*y,(0.85^t2)*y,(0.9^t2)*y,(0.95^t2)*y,1*y};
	   

d3[]={xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,
     xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,
     xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3};

di3[]={(0.0333333^t3)*y,(0.0666666^t3)*y,(0.1^t3)*y,(0.1333333^t3)*y,(0.1666666^t3)*y,
      (0.2^t3)*y,(0.2333333^t3)*y,(0.2666666^t3)*y,(0.3^t3)*y,(0.3333333^t3)*y,
      (0.3666666^t3)*y,(0.4^t3)*y,(0.4333333^t3)*y,(0.4666666^t3)*y,(0.5^t3)*y,
      (0.5333333^t3)*y,(0.5666666^t3)*y,(0.6^t3)*y,(0.6333333^t3)*y,(0.6666666^t3)*y,
      (0.7^t3)*y,(0.7333333^t3)*y,(0.7666666^t3)*y,(0.8^t3)*y,(0.8333333^t3)*y,
      (0.8666666^t3)*y,(0.9^t3)*y,(0.9333333^t3)*y,(0.9666666^t3)*y,1*y};


d4[]={xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,
     xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,
     xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,
     xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4,xx4};

di4[]={ (0.025^t4)*y, (0.05^t4)*y, (0.075^t4)*y, (0.1^t4)*y, (0.125^t4)*y,
       (0.15^t4)*y, (0.175^t4)*y, (0.2^t4)*y, (0.225^t4)*y, (0.25^t4)*y,
       (0.275^t4)*y, (0.3^t4)*y, (0.325^t4)*y, (0.35^t4)*y, (0.375^t4)*y,
       (0.4^t4)*y, (0.425^t4)*y, (0.45^t4)*y, (0.475^t4)*y, (0.5^t4)*y,
       (0.525^t4)*y, (0.55^t4)*y, (0.575^t4)*y, (0.6^t4)*y, (0.625^t4)*y,
       (0.65^t4)*y, (0.675^t4)*y, (0.7^t4)*y, (0.725^t4)*y, (0.75^t4)*y,
       (0.775^t4)*y, (0.8^t4)*y, (0.825^t4)*y, (0.85^t4)*y, (0.875^t4)*y,
       (0.9^t4)*y, (0.925^t4)*y, (0.95^t4)*y, (0.975^t4)*y, 1*y};





d5[]={xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,
     xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,
     xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,
     xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,
     xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5,xx5};

di5[]={ (0.02^t5)*y, (0.04^t5)*y, (0.06^t5)*y, (0.08^t5)*y, (0.1^t5)*y,
       (0.12^t5)*y, (0.14^t5)*y, (0.16^t5)*y, (0.18^t5)*y, (0.2^t5)*y,
       (0.22^t5)*y, (0.24^t5)*y, (0.26^t5)*y, (0.28^t5)*y, (0.3^t5)*y,
       (0.32^t5)*y, (0.34^t5)*y, (0.36^t5)*y, (0.38^t5)*y, (0.4^t5)*y,
       (0.42^t5)*y, (0.44^t5)*y, (0.46^t5)*y, (0.48^t5)*y, (0.5^t5)*y,
       (0.52^t5)*y, (0.54^t5)*y, (0.56^t5)*y, (0.58^t5)*y, (0.6^t5)*y,
       (0.62^t5)*y, (0.64^t5)*y, (0.66^t5)*y, (0.68^t5)*y, (0.7^t5)*y,
       (0.72^t5)*y, (0.74^t5)*y, (0.76^t5)*y, (0.78^t5)*y, (0.8^t5)*y,
       (0.82^t5)*y, (0.84^t5)*y, (0.86^t5)*y, (0.88^t5)*y, (0.9^t5)*y,
       (0.92^t5)*y, (0.94^t5)*y, (0.96^t5)*y, (0.98^t5)*y, 1*y};



d6[]={xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,
     xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,
     xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,
     xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,
     xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,
     xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6,xx6};


di6[]={ 
      (0.0166667^t6)*y, (0.0333334^t6)*y, (0.05^t6)*y, (0.0666667^t6)*y, (0.0833334^t6)*y, 
      (0.1^t6)*y, (0.1166667^t6)*y, (0.1333334^t6)*y, (0.15^t6)*y, (0.1666667^t6)*y, 
      (0.1833334^t6)*y, (0.2^t6)*y, (0.2166667^t6)*y, (0.2333334^t6)*y, (0.25^t6)*y, 
      (0.2666667^t6)*y, (0.2833334^t6)*y, (0.3^t6)*y, (0.3166667^t6)*y, (0.3333334^t6)*y, 
      (0.35^t6)*y, (0.3666667^t6)*y, (0.3833334^t6)*y, (0.4^t6)*y, (0.4166667^t6)*y, 
      (0.4333334^t6)*y, (0.45^t6)*y, (0.4666667^t6)*y, (0.4833334^t6)*y, (0.5^t6)*y, 
      (0.5166667^t6)*y, (0.5333334^t6)*y, (0.55^t6)*y, (0.5666667^t6)*y, (0.5833334^t6)*y, 
      (0.6^t6)*y, (0.6166667^t6)*y, (0.6333334^t6)*y, (0.65^t6)*y, (0.6666667^t6)*y, 
      (0.6833334^t6)*y, (0.7^t6)*y, (0.7166667^t6)*y, (0.7333334^t6)*y, (0.75^t6)*y, 
      (0.7666667^t6)*y, (0.7833334^t6)*y, (0.8^t6)*y, (0.8166667^t6)*y, (0.8333334^t6)*y, 
      (0.85^t6)*y, (0.8666667^t6)*y, (0.8833334^t6)*y, (0.9^t6)*y, (0.9166667^t6)*y, 
      (0.9333334^t6)*y, (0.95^t6)*y, (0.9666667^t6)*y, (0.9833334^t6)*y, (1*y)
};



d7[]={xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,
     xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,
     xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,
     xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,
     xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,
     xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,
     xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7,xx7};

di7[]={ 
      (0.0142857^t7)*y, (0.0285714^t7)*y, (0.0428571^t7)*y, (0.0571429^t7)*y, (0.0714286^t7)*y,
      (0.0857143^t7)*y, (0.1^t7)*y, (0.1142857^t7)*y, (0.1285714^t7)*y, (0.1428571^t7)*y,
      (0.1571429^t7)*y, (0.1714286^t7)*y, (0.1857143^t7)*y, (0.2^t7)*y, (0.2142857^t7)*y,
      (0.2285714^t7)*y, (0.2428571^t7)*y, (0.2571429^t7)*y, (0.2714286^t7)*y, (0.2857143^t7)*y,
      (0.3^t7)*y, (0.3142857^t7)*y, (0.3285714^t7)*y, (0.3428571^t7)*y, (0.3571429^t7)*y,
      (0.3714286^t7)*y, (0.3857143^t7)*y, (0.4^t7)*y, (0.4142857^t7)*y, (0.4285714^t7)*y,
      (0.4428571^t7)*y, (0.4571429^t7)*y, (0.4714286^t7)*y, (0.4857143^t7)*y, (0.5^t7)*y,
      (0.5142857^t7)*y, (0.5285714^t7)*y, (0.5428571^t7)*y, (0.5571429^t7)*y, (0.5714286^t7)*y,
      (0.5857143^t7)*y, (0.6^t7)*y, (0.6142857^t7)*y, (0.6285714^t7)*y, (0.6428571^t7)*y,
      (0.6571429^t7)*y, (0.6714286^t7)*y, (0.6857143^t7)*y, (0.7^t7)*y, (0.7142857^t7)*y,
      (0.7285714^t7)*y, (0.7428571^t7)*y, (0.7571429^t7)*y, (0.7714286^t7)*y, (0.7857143^t7)*y,
      (0.8^t7)*y, (0.8142857^t7)*y, (0.8285714^t7)*y, (0.8428571^t7)*y, (0.8571429^t7)*y,
      (0.8714286^t7)*y, (0.8857143^t7)*y, (0.9^t7)*y, (0.9142857^t7)*y, (0.9285714^t7)*y,
      (0.9428571^t7)*y, (0.9571429^t7)*y, (0.9714286^t7)*y, (0.9857143^t7)*y, (1*y)
};







/////////////////////////////////////////////////////////////
/////////////////          Extrude          /////////////////
/////////////////////////////////////////////////////////////
// base extrude up

Extrude {0, depth ,0} {Surface{1:69}; Layers{ d2[], di2[] }; Recombine;}

Extrude {0, -10 ,0} {Surface{1:9}; Layers{ 100 }; Recombine;}
Extrude {0, -15 ,0} {Surface{14:33}; Layers{ d3[], di3[]  }; Recombine;}



Extrude {0, depth2, 0} {Surface {94, 116, 138, 160, 182, 226, 204, 292, 314, 380,402, 424, 468, 490, 512, 358, 336, 248, 270, 446, 
    534, 644, 666, 688, 622, 600, 578, 556, 798, 776, 732, 754, 710};Layers{ 20 }; Recombine;}









/////////////////////////////////////////////////////////////
/////////////////        Boundaries         /////////////////
/////////////////////////////////////////////////////////////
Physical Surface("inlet", 4000) = {820, 842, 908, 886, 864, 930, 952, 996, 974};



Physical Surface("outlet", 4001) = {1898, 1678, 1876, 1744, 1722, 1766, 1656, 1700, 1458, 1502, 1480, 1590, 1612, 1634, 1568, 1524, 1832, 1810, 1546, 1854, 1788, 2140, 1986, 1920, 1942, 1964, 2162, 2118, 2096, 2074, 2052, 2030, 2008};

//Physical Surface("top_wall", 9001) = {2140, 1986, 1920, 1942, 1964, 2162, 2118, 2096, 2074, 2052, 2030, 2008};


Physical Surface("sidewalls", 4002) = {705, 749, 683, 727, 2157, 2113, 2135, 1959, 1915, 661, 1937, 639, 613, 1977, 573, 2025, 1999, 591, 551, 2047, 771, 2091, 2069, 793, 1431, 1189, 1409, 1365, 1387, 1343, 1299, 1321, 1277, 1229, 1251, 1211};



Physical Surface("bottom", 4003) = {1392, 1414, 1172, 1370, 1348, 1326, 1128, 1304, 1106, 1150, 1436, 1194, 1040, 1216, 1238, 1260, 1084, 1282, 1018, 1062};
Physical Surface("jetwall", 4004) = {917,991,11,10,12,13,1137,943,969, 1093, 1005, 1049};




Physical Volume("flowDomain", 9000) = {1:95};
Recombine Volume {1:95};




Mesh 2;
Mesh 3;

Coherence;
Mesh.MshFileVersion = 2;


