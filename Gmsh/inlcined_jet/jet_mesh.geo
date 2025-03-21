/////////////////////// Constants ///////////////////////
scale = 0.5;                                     // Global scaling factor for the entire geometry (do not change)
alpha = Cos(Pi/4);                               // Cosine of 45 degrees (used for rotations)(do not change)
beta = Sin(Pi/4);                                // Sine of 45 degrees (used for rotations)(do not change)
r = (((0.5^2)+(0.5^2))^0.5) * scale;             // Radius of a circular region (scaled)(do not change)
r2 = r * 1.2;                                    // Enlarged radius (20% larger than r)(do not change)
s = 0.55 * scale;                                // Side length of a square region (scaled)(do not change)
RB = ((((0.95/2)^2)+((0.95/2)^2))^0.5) * scale;  // Radius of another circular region (scaled)(do not change)
lambda = 0.3 / 2;                                // Half-length of a small characteristic dimension(do not change)
angle = Cos(Pi/2);                               // Cosine of 90 degrees (used for defining directional alignment)(do not change)
side_constant = 2.35702261;                      // Geometric scaling factor for side distances (do not change)
///////////////////////// End of Constants ///////////////////////

////////////////// First Box Constants //////////////////
x1_1 = 16;                      // X-position for the right side of the jet
x1 = x1_1;                      // X-position for the left side of the jet (same as right side)
x2 = 1.5;                       // Width of the side openings (modify with caution)
z1 = 40 * side_constant;        // Distance from the center to the sides (scaled, do not change)
z2 = 1.5;                       // Width of the side openings in the Z-direction (modify with caution)
//////////////////////// End ////////////////////////

////////////////// Extrude Constants //////////////////
down1 = -15 * scale;               // Length of the pipe section (scaled, 7.5 in nondimensional units)
down2 = -60 * scale;               // Length of the downward mesh extension (scaled)
top = 130;                         // Elevation of the top boundary for box 1
top2 = 90;                         // Elevation of the top boundary for box 2
yy = top * 1.131254229 * scale;    // Scaled height for extrusion (do not change)
yy2 = top2 * 1.131254229 * scale;  // Scaled height for second extrusion (do not change)
y = 1;                             // Constant reference value (do not change)

// Layer thickness scaling factors for extrusions
xx1 = 7;  // Scaling factor for extrusion layer 1
xx2 = 3;  // Scaling factor for extrusion layer 2
xx3 = 4;  // Scaling factor for extrusion layer 3
xx4 = 5;  // Scaling factor for extrusion layer 4
xx5 = 6;  // Scaling factor for extrusion layer 5
xx6 = 1;  // Scaling factor for extrusion layer 6
xx7 = 1;  // Scaling factor for extrusion layer 7
xx8 = 1;  // Scaling factor for extrusion layer 8

// Progression factors for mesh refinement during extrusion
t1 = 1.5;  
t2 = 1.3;  
t3 = 1.05;  
t4 = 1.05;  
t5 = 1.05;  
t6 = 1.2;  
t7 = 1.15;  
t8 = 1;  // Uniform progression (no refinement)
//////////////////////// End ////////////////////////

////////////////// Front and Back Extrude Constants //////////////////
fex1 = 190 * scale;      // Extrusion distance for the front region (scaled)
fex1_ex = 100 * scale;   // Additional extrusion distance for the front region (scaled)
fex2 = 65 * scale;       // Extrusion distance for the back region (scaled)
//////////////////////// End ////////////////////////

////////////////// Discretization Parameters //////////////////
// Number of divisions along different regions of the mesh
np1 = 18;   // Number of divisions in the middle of the circular region
np2 = 5;    // Number of divisions in the first outer layer of the circle
np3 = 5;    // Number of divisions in the second outer layer of the circle
np4 = 100;  // Number of divisions along the side boundaries
np5 = 50;   // Number of divisions along the front and back of the circular region
npw = 3;    // Number of divisions for pipe walls
////////////////// Mesh Progression Factors //////////////////
// Progression factors for mesh refinement (used in Transfinite Curve settings)
comp1 = 0.98;     // Compression factor (slightly decreases element size)
comp2 = 1.02;     // Expansion factor (slightly increases element size)

comp1_1 = 0.97;   // Slightly stronger compression factor for refinement
comp2_1 = 1.03;   // Slightly stronger expansion factor for refinement
//////////////////////// End ////////////////////////

//////////////////////// points ////////////////////////
Point(1) = {0, 0, 0};
Point(2) = {-s, 0, -s};
Point(3) = {s, 0, -s};
Point(4) = {s, 0, s};
Point(5) = {-s, 0, s};

Point(26) = {lambda, 0, 0};
Point(27) = {-lambda, 0, 0};
Point(28) = {0, 0, lambda};
Point(29) = {0, 0,-lambda};

Point(30) = {-RB, 0, -RB};
Point(31) = {RB, 0, -RB};
Point(32) = {RB, 0, RB};
Point(33) = {-RB, 0, RB};

Point(6) = {-r,0, -r};
Point(7) = {r, 0, -r};
Point(8) = {r, 0, r};
Point(9) = {-r,0, r};

Point(10) = {-r2,0, -r2};
Point(11) = {r2, 0, -r2};
Point(12) = {r2, 0, r2};
Point(13) = {-r2,0, r2};

xyz1[] = Point{10};
xyz2[] = Point{11};
xyz3[] = Point{12};
xyz4[] = Point{13};

Point(14) = {x1*xyz1[0],xyz1[1],z1*xyz1[2]};
Point(15) = {x1_1*xyz2[0],xyz2[1],z1*xyz2[2]};
Point(16) = {x1_1*xyz3[0],xyz3[1],z1*xyz3[2]};
Point(17) = {x1*xyz4[0],xyz4[1],z1*xyz4[2]};

Point(18) = {x2*xyz1[0],xyz1[1],z1*xyz1[2]};
Point(19) = {x2*xyz2[0],xyz2[1],z1*xyz2[2]};
Point(20) = {x2*xyz3[0],xyz3[1],z1*xyz3[2]};
Point(21) = {x2*xyz4[0],xyz4[1],z1*xyz4[2]};

Point(22) = {x1*xyz1[0],xyz1[1],z2*xyz1[2]};
Point(23) = {x1_1*xyz2[0],xyz2[1],z2*xyz2[2]};
Point(24) = {x1_1*xyz3[0],xyz3[1],z2*xyz3[2]};
Point(25) = {x1*xyz4[0],xyz4[1],z2*xyz4[2]};

//////////////////////// lines ////////////////////////
Circle(1) = {2, 28, 3};
Circle(2) = {3, 27, 4};
Circle(3) = {4, 29, 5};
Circle(4) = {5, 26, 2};

Circle(5) = {6, 1, 7};
Circle(6) = {7, 1, 8};
Circle(7) = {8, 1, 9};
Circle(8) = {9, 1, 6}; 

Circle(9) = {10, 1, 11};
Circle(10) = {11, 1, 12};
Circle(11) = {12, 1, 13};
Circle(12) = {13, 1, 10}; 

Circle(41) = {30, 1, 31};
Circle(42) = {31, 1, 32};
Circle(43) = {32, 1, 33};
Circle(44) = {33, 1, 30}; 

//Connection: Inner square-Nozzle
Line(13) = {2, 30};
Line(14) = {3, 31};
Line(15) = {4, 32};
Line(16) = {5, 33};

Line(45) = {30, 6};
Line(46) = {31, 7};
Line(47) = {32, 8};
Line(48) = {33, 9};

Line(17) = {10, 6};
Line(18) = {11, 7};
Line(19) = {12, 8};
Line(20) = {13, 9};

Line(21) = {10, 18};
Line(22) = {11, 19};
Line(23) = {11, 23};
Line(24) = {12, 24};
Line(25) = {12, 20};
Line(26) = {13, 21};
Line(27) = {10, 22};
Line(28) = {13, 25};

Line(29) = {18, 19};
Line(30) = {23, 24};
Line(31) = {20, 21};
Line(32) = {25, 22};

Line(33) = {19, 15};
Line(34) = {15, 23};
Line(35) = {24, 16};
Line(36) = {16, 20};
Line(37) = {21, 17};
Line(38) = {17, 25};
Line(39) = {22, 14};
Line(40) = {14, 18};

Curve Loop(1) = {3, 4, 1, 2};
Plane Surface(1) = {1};
Curve Loop(2) = {4, 13, -44, -16};
Plane Surface(2) = {2};
Curve Loop(3) = {1, 14, -41, -13};
Plane Surface(3) = {3};
Curve Loop(4) = {2, 15, -42, -14};
Plane Surface(4) = {4};
Curve Loop(5) = {43, -16, -3, 15};
Plane Surface(5) = {5};

Curve Loop(18) = {4, 13, -44, -16};
Plane Surface(18) = {18};
Curve Loop(19) = {48, 8, -45, -44};
Plane Surface(19) = {19};
Curve Loop(20) = {45, 5, -46, -41};
Plane Surface(20) = {20};
Curve Loop(21) = {46, 6, -47, -42};
Plane Surface(21) = {21};
Curve Loop(22) = {47, 7, -48, -43};
Plane Surface(22) = {22};

Curve Loop(6) = {20, 8, -17, -12};
Plane Surface(6) = {6};

Curve Loop(7) = {17, 5, -18, -9};
Plane Surface(7) = {7};
Curve Loop(8) = {18, 6, -19, -10};
Plane Surface(8) = {8};
Curve Loop(9) = {19, 7, -20, -11};
Plane Surface(9) = {9};

Curve Loop(10) = {22, 33, 34, -23};
Plane Surface(10) = {10};
Curve Loop(11) = {23, 30, -24, -10};
Plane Surface(11) = {11};
Curve Loop(12) = {24, 35, 36, -25};
Plane Surface(12) = {12};
Curve Loop(13) = {25, 31, -26, -11};
Plane Surface(13) = {13};
Curve Loop(14) = {26, 37, 38, -28};
Plane Surface(14) = {14};
Curve Loop(15) = {28, 32, -27, -12};
Plane Surface(15) = {15};
Curve Loop(16) = {27, 39, 40, -21};
Plane Surface(16) = {16};
Curve Loop(17) = {21, 29, -22, -9};
Plane Surface(17) = {17};

//////////////////////// Discretization Settings ////////////////////////
// Applying transfinite (structured) meshing to curves with specified divisions
Transfinite Curve{1:4} = np1;    // Middle section of the circular region
Transfinite Curve{5:8} = np1;    // Additional inner circular curves
Transfinite Curve{41:44} = np1;  // Outer circular curves
Transfinite Curve{45:48} = npw;  // Pipe wall edges (fewer divisions for structured mesh)

// Outer and transition circular curves
Transfinite Curve{9:12} = np1;   // Additional inner circular curves
Transfinite Curve{29:32} = np1;  // Additional outer circular curves
Transfinite Curve{13:16} = np2 Using Progression comp1;  // Outer transition curves with controlled compression

Transfinite Curve{17:20} = np3;  // Further outer circular layers

// Side boundaries with progression refinement
Transfinite Curve{34,38} = np4 Using Progression comp1_1; 
Transfinite Curve{35,39,22,21,26,25} = np4 Using Progression comp2_1; 

// Front and back curves with progressive refinement
Transfinite Curve{37,28,27,-40,-36,24,23,33} = np5 Using Progression 1.025;  

Transfinite Surface{1:22};  
Recombine Surface{1:22};  
//////////////////////// End ////////////////////////

//////////////////////// extrude constants////////////////////////
///////////////////////// do not change /////////////////////////

d1[]={xx1,xx1,xx1,xx1,xx1};
di1[]={(0.2^t1)*y,(0.4^t1)*y,(0.6^t1)*y,(0.8^t1)*y,(1*y)};

///////////////////////// do not change /////////////////////////

d2[]={xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,
		xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2,xx2};
di2[]={(0.05^t2)*y,(0.1^t2)*y,(0.15^t2)*y,(0.2^t2)*y,(0.25^t2)*y,
       (0.3^t2)*y,(0.35^t2)*y,(0.4^t2)*y,(0.45^t2)*y,(0.5^t2)*y,
       (0.55^t2)*y,(0.6^t2)*y,(0.65^t2)*y,(0.7^t2)*y,(0.75^t2)*y,
       (0.8^t2)*y,(0.85^t2)*y,(0.9^t2)*y,(0.95^t2)*y,1*y};
	   
///////////////////////// do not change /////////////////////////

d3[]={xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,
     xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,
     xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3,xx3};

di3[]={(0.0333333^t3)*y,(0.0666666^t3)*y,(0.1^t3)*y,(0.1333333^t3)*y,(0.1666666^t3)*y,
      (0.2^t3)*y,(0.2333333^t3)*y,(0.2666666^t3)*y,(0.3^t3)*y,(0.3333333^t3)*y,
      (0.3666666^t3)*y,(0.4^t3)*y,(0.4333333^t3)*y,(0.4666666^t3)*y,(0.5^t3)*y,
      (0.5333333^t3)*y,(0.5666666^t3)*y,(0.6^t3)*y,(0.6333333^t3)*y,(0.6666666^t3)*y,
      (0.7^t3)*y,(0.7333333^t3)*y,(0.7666666^t3)*y,(0.8^t3)*y,(0.8333333^t3)*y,
      (0.8666666^t3)*y,(0.9^t3)*y,(0.9333333^t3)*y,(0.9666666^t3)*y,1*y};

///////////////////////// do not change /////////////////////////

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

///////////////////////// do not change /////////////////////////

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

///////////////////////// do not change /////////////////////////

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

///////////////////////// do not change /////////////////////////

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

///////////////////////// Extrude Operations /////////////////////////
// Extrude base surfaces upwards to form the main geometry
Extrude {0, yy, 0} {Surface{1:22}; Layers{ d5[], di5[] }; Recombine;}

// Extrude pipe region downward to extend the inlet section
Extrude {0, down1, 0} {Surface{1:5,18:22}; Layers{250}; Recombine;}

// Extrude front section forward to extend the domain
Extrude {fex1, 0, 0} {Surface{263,303,281}; Layers { d4[], di4[] }; Recombine;}

// Extrude base surfaces downward for depth extension
Extrude {0, down2, 0} {Surface{10:17}; Layers {d1[], di1[]}; Recombine;}

// Extrude front section downward for further domain extension
Extrude {fex1, 0, 0} {Surface{831,791,809}; Layers {d4[], di4[]}; Recombine;}

// Extrude back section upwards to complete the rear domain
Extrude {-fex2, 0, 0} {Surface{391,351,369}; Layers {d3[], di3[]}; Recombine;}

// Extrude back section downward for further extension
Extrude {-fex2, 0, 0} {Surface{919,879,897}; Layers {d3[], di3[]}; Recombine;}

// Additional extrusion of the front section to refine the domain
Extrude {fex1_ex, 0, 0} {Surface{752, 730, 994, 972, 1016,774}; Layers {d1[], di1[]}; Recombine;}

// Extrude top surfaces upwards to form the upper boundary of the domain
Extrude {0, yy2, 0} {Surface{1055,747,725,1187,1165,1275,769,312,334,356,268,422,400,378,290,70,92,114,136,158,224,202,180,246,444,488,510,466,1033,1077}; 
Layers {d2[], di2[]}; Recombine;} 

///////////////////////// End of Extrude Operations /////////////////////////

///////////////////////// Boundary Naming /////////////////////////
Physical Surface("inlet", 2001) = {532, 554, 620, 598, 576, 664, 686, 708, 642};  
Physical Surface("outlet", 2002) = {1236,1214,1258};  
Physical Surface("bottom", 2003) = {1121, 967, 989, 1209, 1231, 1099, 1143, 928, 796, 950, 1011, 840, 862, 884, 906, 818, 1253};  
Physical Surface("back", 2004) = {1297, 1913, 1038, 1060, 1126, 1104, 1148, 1082, 1935};  
Physical Surface("back2", 2005) = {1170, 1385, 1363, 1407, 1192, 1280};  
Physical Surface("top", 2006) = {1324, 1368, 1346, 1390, 1412, 1434, 1456, 1478, 1500, 1588, 1566, 1544, 1522, 1610, 1302, 1940, 1918, 1632, 1654, 1830, 1786, 1764, 1896, 1676, 1852, 1742, 1698, 1720, 1808, 1874};  
Physical Surface("rightwall", 2007) = {1293, 1323, 1389, 1161, 963, 743, 1227, 1059, 1125, 875, 853, 835, 307, 347, 325, 1491, 1469, 1451};  
Physical Surface("leftwall", 2008) = {1029, 729, 1191, 1213, 993, 1337, 1359, 1917, 1095, 923, 787, 941, 395, 413, 259, 1513, 1535, 1561};  
Physical Surface("pipewall", 2009) = {949, 817, 905, 861, 6, 7, 8, 9, 655, 633, 677, 699};  

Physical Volume("flowDomain", 3000) = {1:86};  
Recombine Volume {1:86};  
///////////////////////// End of Boundary Naming /////////////////////////

///////////////////////// Mesh Generation Settings /////////////////////////
Mesh 2;                   // Generate a 2D mesh
// Mesh 3;                // Uncomment the following line to generate the final 3D mesh 
Coherence;                // Ensure geometric coherence (merges duplicate nodes and improves mesh consistency)
Mesh.MshFileVersion = 2;  // Set the mesh file format version to 2 
///////////////////////// End of Mesh Generation Settings /////////////////////////