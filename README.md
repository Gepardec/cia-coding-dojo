# cia-coding-dojo
Repository für das CIA Coding Dojo

## Die Weihnachts AG 
Die Weihnachts AG hat mitbekommen, dass Automatisierung angeblich ziemlich cool ist. Darum wünscht sie sich Pipelines für ihre Java-Weihnachtssoftware.
Dummerweise ist das ganze Budget für Geschenke aufgebraucht worden. Es gibt lediglich ein ganz kleiner Linux Server, auf dem kein weiteres Tool installiert werden kann.
Daher müssen statt Jenkins, Azure oder Gitlab und co. normale Shell Skripte verwendet werden.


Folgende Anforderungen an Pipelines wurden gestellt:

#### "Build Pipeline Multibranch"
Diese Pipeline soll alle 5 minuten überprüfen, ob die konfigurierten branches neue Commits haben. Wenn dies der Fall is, soll sie den Code auschecken, bauen und Tests durchführen.

#### "Nightly Pipeline 
Diese Pipeline soll über Nacht jeweils den Haupt branch auschecken und testen. Wenn die Tests schief gehen, soll der workspace archiviert werden damit man am nächsten Tag nachschauen kann.

#### Release Pipeline:
Diese Pipeline soll nach einem branch fragen welcher ausgecheckt und gebaut wird. Wenn alle Tests erfolgreich sind, kann das fertige JAR File mit der zuvor angegebenen Release Version in einem allgemeinen Release Ordner gespeichert werden.

#### Deploy Pipeline
Diese Pipeline soll eine Liste anzeigen mit verfügbaren Releases. Wenn eines ausgewählt wurde, soll dieses in den Ordner "WBoss-Server" gelegt und ausgeführt werden.

#### Cleanup Pipeline
Diese Pipeline soll alle bestehenden Workspaces der verschiedenen Pipelines löschen.


#### Allgemeine Anforderung 
Jede Pipeline soll ein Logfile schreiben. Es wird jeweils nur ein Logfile vom letzten Lauf gebraucht.
Damit man in Zukunft nicht jede Pipeline anpassen muss, sollen wenn möglich einzelne Schritte in eigene Files ausgelagert werden.
