(* ::Package:: *)

(* ::Title:: *)
(*Aufgabe 36*)
(*Martin und Kr\[UDoubleDot]ger*)


(* ::Input:: *)
(**)


(* ::Chapter:: *)
(*Aufgabe 36 b)*)


(* ::Text:: *)
(*Plot des Graphen der impliziten Funktion:*)


(* ::Input:: *)
(*Show[ContourPlot[Sin[x^2]+2x*y+Cos[y^2]+x-4y==1,{x,-5,5},{y,-5,5},FrameLabel->{"x","y"},PlotLegends->{"implizite Funktion"}]]*)


(* ::Input:: *)
(**)
(**)


(* ::Chapter:: *)
(*Aufgabe 36 c)*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Berechnung einer beliebigen Ableitung der impliziten Funktion nach y:*)


(* ::Input:: *)
(**)
(*derivativesx[depth0_]:=Module[{depth=depth0},*)
(*g[c_]:=Solve[D[Sin[x[y]*x[y]]+2x[y]*y+Cos[y^2]+x[y]-4y,{y,c}]==0,D[x[y],{y,c}]];*)
(*deriv=List[];*)
(**)
(*For[l=1,l<=depth,l++,*)
(*AppendTo[deriv,g[l][[1,1]]/.deriv]*)
(*];*)
(*deriv=deriv/.{y->0,x[y]->0}*)
(*]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Teste die oben definierte Funktion:*)


(* ::Input:: *)
(*derivativesx[10]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Taylorentwicklung nach x[y]:*)


(* ::Input:: *)
(*taylorx[grade_]:=Module[{depth=grade},*)
(*g[c_]:=Solve[D[Sin[x[y]*x[y]]+2x[y]*y+Cos[y^2]+x[y]-4y-1,{y,c}]==0,D[x[y],{y,c}]];*)
(*deriv=List[];*)
(**)
(*For[l=1,l<=depth,l++,*)
(*AppendTo[deriv,g[l][[1,1]]/.deriv]*)
(*];*)
(*deriv=Values[deriv/.{y->0,x[y]->0}];*)
(*Sum[((Extract[deriv,n])/(n!))*y^n,{n,1,depth}]*)
(*]*)
(**)


(* ::Text:: *)
(*Teste Taylorentwicklung vom Grad 10:*)


(* ::Input:: *)
(*taylorx[10]*)


(* ::Text:: *)
(*Wie man sieht, ist die Taylorentwicklung eine alternierende Reihe. Nach dem Leibniz-Kriterium m\[UDoubleDot]ssten die Partialsummen notwendigerweise eine Nullfolge bilden. Da y beliebige Werte annehmen kann und die Vorfaktoren jeweils wesentlich gr\[ODoubleDot]\[SZ]er werden, ist keine Nullfolge vorhanden. Damit konvergiert die Taylorentwicklung nach dem Leibniz-Kriterium nicht. D.h. die Taylorentwicklung divergiert.*)


(* ::Input:: *)
(**)


(* ::Chapter:: *)
(*Aufgabe 36 d)*)


(* ::Text:: *)
(*Berechnung einer beliebigen Ableitung der impliziten Funktion nach x:*)


(* ::Input:: *)
(**)
(*derivativesy[depth0_]:=Module[{depth=depth0},*)
(*g[c_]:=Solve[D[Sin[x*x]+2x*y[x]+Cos[y[x]*y[x]]+x-4y[x],{x,c}]==0,D[y[x],{x,c}]];*)
(*deriv=List[];*)
(**)
(*For[l=1,l<=depth,l++,*)
(*AppendTo[deriv,g[l][[1,1]]/.deriv]*)
(*];*)
(*deriv=deriv/.{x->0,y[x]->0}*)
(*]*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Teste die oben definierte Funktion:*)


(* ::Input:: *)
(*derivativesy[10]*)


(* ::Text:: *)
(*Taylorentwicklung nach x[y]:*)


(* ::Input:: *)
(**)
(*taylory[grade_]:=Module[{depth=grade},*)
(*g[c_]:=Solve[D[Sin[x*x]+2x*y[x]+Cos[y[x]*y[x]]+x-4y[x],{x,c}]==0,D[y[x],{x,c}]];*)
(*deriv=List[];*)
(**)
(*For[l=1,l<=depth,l++,*)
(*AppendTo[deriv,g[l][[1,1]]/.deriv]*)
(*];*)
(*deriv=Values[deriv/.{x->0,y[x]->0}];*)
(*Sum[((Extract[deriv,n])/(n!))*x^n,{n,1,depth}]*)
(*]*)


(* ::Input:: *)
(**)
(**)


(* ::Text:: *)
(*Teste Taylorentwicklung vom Grad 10:*)


(* ::Input:: *)
(*taylory[10]*)


(* ::Input:: *)
(**)


(* ::Chapter:: *)
(*Aufgabe 36 e)*)


(* ::Text:: *)
(*Plot der Funktion und der beiden Taylorentwicklungen, jeweils bis zum Grad 5:*)


(* ::Input:: *)
(*taylorx5=taylorx[5]*)
(*taylory5=taylory[5]*)


(* ::Input:: *)
(*Show[ContourPlot[{Sin[x^2]+2x*y+Cos[y^2]+x-4y==1,taylory5==y,x==taylorx5},{x,-5,5},{y,-5,5},FrameLabel->{"x","y"},PlotLegends->{"implizite Funktion","Taylorentwicklung nach y[x]","Taylorentwicklung nach x[y]"}]]*)


(* ::Text:: *)
(*Wobei der Plot der Taylorentwicklungen bis zum Grad 10 wesentlich besser aussieht:*)


(* ::Input:: *)
(*taylorx10=taylorx[10]*)
(*taylory10=taylory[10]*)


(* ::Input:: *)
(*Show[ContourPlot[{Sin[x^2]+2x*y+Cos[y^2]+x-4y==1,taylory10==y,x==taylorx10},{x,-5,5},{y,-5,5},FrameLabel->{"x","y"},PlotLegends->{"implizite Funktion","Taylorentwicklung nach y[x]","Taylorentwicklung nach x[y]"}]]*)
