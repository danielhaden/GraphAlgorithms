(* Wolfram Language Package *)

(* Created by the Wolfram Workbench May 20, 2018 *)

BeginPackage["GraphAlgorithms`"]
(* Exported symbols added here with SymbolName::usage *) 

Begin["`Private`"]
(* Implementation of the package *)
End[]

NestedTriangleGraph[n_] :=
  Graph[Flatten[Join[{{1 <-> 2}}, 
  					 Outer[{#1 <-> #2} &, {1, 2}, Range[3, n + 2]], 
     				 MapThread[{#1 <-> #2} &, {Range[3, n + 1], Range[4, n + 2]}]]],
   
   		VertexCoordinates -> Join[{{0., 0.}, {1., 0.}}, 
     						      Transpose[{ConstantArray[0.5, n], 
     						      			N[Rest[Subdivide[n]]]}]]
  ];
				
EndPackage[]

