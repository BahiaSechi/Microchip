▒▒▒▒▒▄██████████▄▒▒▒▒▒ 
▒▒▒▄██████████████▄▒▒▒ 
▒▒██████████████████▒▒ 
▒▐███▀▀▀▀▀██▀▀▀▀▀███▌▒ 
▒███▒▒▌■▐▒▒▒▒▌■▐▒▒███▒ 
▒▐██▄▒▀▀▀▒▒▒▒▀▀▀▒▄██▌▒ 
▒▒▀████▒▄▄▒▒▄▄▒████▀▒▒ 
▒▒▐███▒▒▒▀▒▒▀▒▒▒███▌▒▒ 
▒▒███▒▒▒▒▒▒▒▒▒▒▒▒███▒▒ 
▒▒▒██▒▒▀▀▀▀▀▀▀▀▒▒██▒▒▒ 
▒▒▒▐██▄▒▒▒▒▒▒▒▒▄██▌▒▒▒ 
▒▒▒▒▀████████████▀▒▒▒▒

*** PICSIMLAB INSTALLATION :

Projets de test pour simulateur PIC PICSIMLAB. PICSIMLAB est une projet
open source sous licence GPL disponible en ligne et dont les sources
et executables sont librement téléchargeables depuis internet. Lien officiel :

https://sourceforge.net/projects/picsim/

Lien de téléchargement de PICSIMLAB-0.6 (version 2016). Sous Windows, 
télécharger l'executable x86 (32bits) picsimlab_0_6_win32_setup.exe 
ou x64 (64bits) picsimlab_0_6_win64_setup.exe en fonction 
de votre système d'exploitation sur machine host :

https://sourceforge.net/projects/picsim/files/picsim/picsim-0.6/


*** CONFIGURATION :

- board 3
- PIC18F4550 (cf. trame de TP)
- Clock 12MHz (cf. trame de TP)


*** UTILISATION :

>>> Sous MPLABX :
- Ouvrir MPLABX
- Ouvrir les deux projets de test picsimlab (File > Open Project...)
- Emplacements des projets : mcu/cm/demo/picsimlab/<lcd ou gpio>/pjct
- Clic droit sur le nom d'un projet puis sélectionner "Set As Main Project"
afin de sélectionner le projet à compiler
- Clic droit sur le nom d'un projet puis sélectionner "Clean And Build" pour
le compiler
- Après compilation et édition des liens, observer les dernières lignes générés 
sur la fenêtre de sortie de l'IDE MPLABX afin de savoir où a été rangé le fichier 
binaire exécutable de production :

BUILD SUCCESSFUL (total time: 1s)
Loading code from D:/hard/mcu/pic18/cm/2017-2018/demo/picsimlab/lcd/pjct/dist/default/production/pjct.production.hex...
Loading completed

>>> Sous PICSIMLAB :
- cliquer sur ICSP ou "File > Load Hex" pour charger un nouveau programme executable 
"pjct.production.hex" généré après compilation sous MPLABX. Sans aucune obligation,
lire néanmoins la partie ASTUCE qui suit !
- Observer les résultats et croiser les doigts !
- Maintenant, ouvrir le schéma électrique présent dans le répertoire 
mcu/cm/demo/picsimlab/doc/board3.pdf . Analyser le schéma et les projets de test.
Avec un peu de curiosité et de volonté, vous avez la possibilité de réaliser 
l'équivalent de l'ensemble de la trame de TP depuis chez vous ... et même bien plus :-) !


*** ASTUCE :

MPLABX ne tolère pas qu'une autre application ait un accès sur le répertoire
de sortie où sont sauvés les fichiers binaires executables après compilation
et édition de liens.

- Ouvrir une console MS-DOS (interpréteur de commandes Windows)
- Après chaque compilation sous MPLABX, copier le fichier de sortie
vers un répertoire utilisateur non utilisé par MPLABX pour sous processus
de compilation. Exemple de ligne de commande sur ma machine personnelle :

Exemple projet GPIO :
copy D:\hard\mcu\pic18\cm\2017-2018\demo\picsimlab\gpio\pjct\dist\default\production\pjct.production.hex D:\hard\mcu\pic18\cm\2017-2018\demo\picsimlab\out\

Exemple projet LCD :
copy D:\hard\mcu\pic18\cm\2017-2018\demo\picsimlab\lcd\pjct\dist\default\production\pjct.production.hex D:\hard\mcu\pic18\cm\2017-2018\demo\picsimlab\out\
