*** partie COMPRENDRE de l'�valuation ***

Cet exercice consiste � traduire un programme d�velopp� en langage C vers un �quivalent 
en langage assembleur pour PIC18. En d'autres termes, vous allez devoir jouer le r�le du
compilateur C suite � l'analyse du programme (parsing), celle-ci ayant �t� valid�e par mes 
soins. Vous trouverez ci-dessous les consignes et limitations � respecter :

- Toutes les variables du programme sont des variables statiques globales. Les allocations
statiques facilitent l'impl�mentation du programme en assembleur et �vitent la gestion de
variables locales sur une pile ou stack

- Nous supposerons que toutes les variables de notre programme sont situ�es en "Access
Bank". Solution plus simple � impl�menter sur PIC18 et permettant d'�viter la gestion de
l'op�rande "a" ou "access" pr�sente dans grand nombre d'instructions assembleur sur PIC18

- Si un param�tre est pass� � une fonction ou est retourn� par une fonction, le passage du
param�tre se fera dans les deux cas par le registre de travail W (Working register) pr�sent dans
le CPU. Nous n'aborderons pas les passages de plusieurs param�tres aux fonctions

*** entra�nement ***

Afin de vous exercer, je vous rappelle que l'exercice de cours (fil conducteur de l'analyse assembleur) 
est enti�rement rejouable depuis chez vous � partir du moment que l'installation des outils de d�veloppement 
Microchip est �t� r�alis�e. En partant de cette base, vous pouvez vous cr�er une banque infinie d'exercices 
d'entra�nement. Le niveau attendu � l'�valuation pourra recouvrir les niveaux d'exigences du cours 
ainsi que ceux des travaux pratiques.

Par exemple, avec un peu plus de temps qu'� l'�valuation sur table, vous devriez �tre capable � mes yeux
de traduire en assembleur le projet terminal du digicode r�alis� en travaux pratiques (dans le respect 
des consignes et limitations pr�c�demment cit�es).

Se r�f�rer � la plateforme moodle d'enseignement pour l'installation des outils - section outils 
de d�veloppement :

http://foad.ensicaen.fr/course/view.php?id=116
