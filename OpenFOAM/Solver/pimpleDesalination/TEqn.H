{
    alphat = turbulence->nut()/Sct;
    alphat.correctBoundaryConditions();

    volScalarField alphaEff("alphaEff", turbulence->nu()/Sc + alphat);

    fvScalarMatrix TEqn
    (
        fvm::ddt(T)
      + fvm::div(phi, T)
      - fvm::laplacian(alphaEff, T)
//     ==
//      + fvOptions(T)
    );

    TEqn.relax();

    //fvOptions.constrain(TEqn);

    TEqn.solve();

    //fvOptions.correct(T);


    //bound T between MaxT and MinT
    
    dimensionedScalar MaxT ("MaxT", T.dimensions(), 1.0);
    dimensionedScalar MinT ("MinT", T.dimensions(), 1.0e-15);
    T = max(min(T,MaxT),MinT);




// Set T to zero where y is less than 10
//    forAll(T, cellI)
//    {
//        if (mesh.C()[cellI][1] < -5.0) // Check if y-coordinate is less than 10
//        {
//            T[cellI] = 0.0; // Set T to zero
//        }
//    }








}
