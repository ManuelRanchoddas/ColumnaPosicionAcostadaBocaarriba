within ColumnaPosicionAcostadaBocaarriba.EcuacionesPosicionacostadaBocaArriba;

model EcuacionesSistema
  extends VariacionAngulo; 
  Records.ValorParametros r annotation(
    Placement(visible = true, transformation(origin = {-78, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
Real Rx;
Real M;
Real Ry;
Real R;
Real Angulo;
equation
Rx-M*cos(Phi-r.Psi)=0;
Ry-M*sin(Phi-r.Psi)-0.4*r.Wb-0.2*r.Wb=0;
//M*sin(Phi-r.Psi)*((2*r.L)/3)-0.4*r.Wb*cos(Phi)*(r.L/2)-0.2*r.Wb*cos(Phi)*r.L=0;
M=0.4*r.Wb;
R=sqrt(Rx^2+Ry^2);
Angulo=atan(Ry/Rx);
//Rx-M*cos(r.Phi-r.Psi)=0;
//Ry-M*sin(r.Phi-r.Psi)-0.4*r.Wb-0.2*r.Wb=0;
//M*sin(r.Phi-r.Psi)*((2*r.L)/3)-0.4*r.Wb*cos(r.Phi)*(r.L/2)-0.2*r.Wb*cos(r.Phi)*r.L=0;
//R=sqrt(Rx^2+Ry^2);
//Angulo=atan(Ry/Rx);
end EcuacionesSistema;
