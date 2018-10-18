within ColumnaPosicionAcostadaBocaarriba.EcuacionesPosicionacostadaBocaArriba;

model VariacionAngulo
  Real Phi;
  Modelica.Blocks.Sources.TimeTable timeTable1(table = [0, 10; 1, 25; 2, 40])  annotation(
    Placement(visible = true, transformation(origin = {-2, 22}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
Phi=timeTable1.y;
end VariacionAngulo;
