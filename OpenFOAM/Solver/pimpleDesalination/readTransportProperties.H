singlePhaseTransportModel laminarTransport(U, phi);

// Laminar Prandtl number
dimensionedScalar Sc("Sc", dimless, laminarTransport);

// Turbulent Prandtl number
dimensionedScalar Sct("Sct", dimless, laminarTransport);


// Turbulent Prandtl number
dimensionedScalar Fr("Fr", dimless, laminarTransport);
