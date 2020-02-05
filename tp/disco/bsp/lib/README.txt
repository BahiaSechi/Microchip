Tutorial pour la cr�ation de biblioth�ques statiques avec xc8
=============================================================


1. Memento des principales commandes MS-DOS
-------------------------------------------------

[command] /[opt1] /[opt2] [parameters]

- help [command] : aide
- cd : changer de r�pertoire
- copy : copier des fichiers
- xcopy : copier des fichiers et r�pertoires
- del : effacer un fichier
- dir : affiche le contenu d'un r�pertoire
- md : cr�er un r�pertoire
- rd : supprimer un r�pertoire
- <lecteur>: : commutation vers un nouveau lecteur racine
- \ : s�parateur

2. se d�placer dans le r�pertoire de cr�ation d'archive
-------------------------------------------------------

<project-path>\lib\

3. copier physiquement les fichiers objets apr�s compilation dans le r�pertoire obj
-----------------------------------------------

<project-path>\lib\obj\

4. cr�er la biblioth�que statique - <your_path>\Microchip\xc8\<your_version>\bin\xc8.exe
-----------------------------------------------

xc8 --chip=18f27k40 --output=lpp obj/*.p1 -Obsplib_tiny.lpp


