# Simulation Track Model

Um das zu verwendende neuronale Netzwerk etwas einzulernen, wird eine Simulation der Strecke benötigt.
Diese Maßnahmen werden ergriffen, um andauernde Crashes während des Lernvorganges zu vermeiden.

Die Simulationsumgebung beinhaltet folgende Einheiten:
* Eine Strecke, welche aus kleinen Streckenstücken zusammengebaut wird. Diese einzelnen 
	Streckenstücke beinhalten Informationen bezüglich:
	* Winkel
	* Streckenlänge
	* Typ (L | S | R) (Left | Straight | Right)
	* Startpunkt (x,y)
	Dabei ist der Endpunkt der Startpunkt des nachfolgenden Elements. Dieser wird beim Zusammensetzen
	der Strecke berechnet. Der Endpunkt des letzten Streckenstückes muss den Startpunkt des ersten Streckenstückes
	ergeben, damit eine vollständige Strecke zusammengabaut wurde.
* Berechnung der Winkelgeschwindigkeit (Gyro-Wert, Drehung um Z-Achse)
* Berechnung der Zentrifugalkraft und anschließender Vergleich mit festgelegter Maximalkraft um einen Crash zu simulieren.
* Berechnung der Drehzahl aus der Geschwindigkeit und dem Reifenradius.
	* durch die Möglichkeit die Drehzahl von ausserhalb zu verändern kann ein Durchdrehen der Reifen simuliert werden.
		Das Durchdrehen führt zu einem Positionsmismatch (Herausfinden, wie gut das neuronale Netzwerk diese Mismatches behandelt)


Die mathematischen Herleitungen für die Berechnungen können in dem Dokument [Math.pdf](link-to-math.pdf)) aufgefunden werden.