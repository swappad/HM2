(* ::Package:: *)

\[AliasDelimiter]


(* ::Section:: *)
(*Anhang an Aufgabe 40c)*)


(* ::Text:: *)
(*xb[xa] und yb[ya] sind die Punkte auf Ellipse B ausgedr\[UDoubleDot]ckt in Abh\[ADoubleDot]ngigkeit eines Punktes (xa,ya) auf Ellipse A:*)


(* ::Input:: *)
(*xb[xa_]:=xa+(da1*(2*xa-2*aA1)*c)/(da1^2*(2*xa-2*aA1)^2+da2^2*(2*yA-2*aA2)^2)*)


(* ::Input:: *)
(*yb[ya_]:=ya+(da2*(2*ya-2*aA2)*c)/(da1^2*(2*xA-2*aA1)^2+da2^2*(2*ya-2*aA2)^2)*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Dies ist die vollst\[ADoubleDot]ndige Abstandsfunktion zwischen zwei beliebigen Punkten auf den Ellipsen.*)
(*Im folgenden wird die Abstandsfunktion durch einsetzten der obigen Herleitungen umgeformt und sp\[ADoubleDot]ter der Gradient berechnet.*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*abs[xa_,ya_,xb_,yb_]=(xa-ya)^2+(xb-yb)^2*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Nun den Punkt auf der zweiten Ellipse in Abh\[ADoubleDot]ngigkeit zum Ersten, eingesetzt in die Abstandsfunktion:*)


(* ::Input:: *)
(*abs[xA,yA,xb[xA],yb[yB]]*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Gradient der Abstandsfunktion:*)


(* ::Input:: *)
(*Grad[abs[xA,yA,xb[xA],yb[yA]],{xA,yA}]*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Nebenbedingungen*)


(* ::Input:: *)
(*nebenA[xa_,ya_]=da1 (xa-aA1)^2+da2 (ya-aA2)^2-1*)


(* ::Input:: *)
(*nebenB[xb_,yb_]=db1 (xb-aB1)^2+dB2 (yb-aB2)^2-1*)


(* ::Text:: *)
(*wobei in Nebenbedingung 2 auch die Variablen wie oben ersetzt werden:*)


(* ::Input:: *)
(*nebenBtoA[xA_,yB_]=nebenB[xb[xA],yb[yA]]*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*Gradient der Nebenbedingung A:*)


(* ::Input:: *)
(*Grad[nebenA[xA,yA],{xA,yA}]*)


(* ::Input:: *)
(**)


(* ::Text:: *)
(*aufl\[ODoubleDot]sen der Gleichung nach (xA,yA)*)


(* ::Input:: *)
(*NSolve[{Grad[abs[xA[c],yA[c],xb[xA[c]],yb[yA[c]]],{xA[c],yA[c]}][[1]]-delta*Grad[nebenA[xA[c],yA[c]],{xA[c],yA[c]}][[1]]==0,Grad[abs[xA[c],yA[c],xb[xA[c]],yb[yA[c]]],{xA[c],yA[c]}][[2]]-delta*Grad[nebenA[xA[c],yA[c]],{xA[c],yA[c]}][[2]]==0,nebenA[xA[c],yA[c]]==0,nebenBtoA[xA[c],yA[c]]==0},{xA[c],yA[c],delta}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)
