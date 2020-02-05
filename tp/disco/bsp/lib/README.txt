Tutorial pour la création de bibliothèques statiques avec xc8
=============================================================


1. Memento des principales commandes MS-DOS
-------------------------------------------------

[command] /[opt1] /[opt2] [parameters]

- help [command] : aide
- cd : changer de répertoire
- copy : copier des fichiers
- xcopy : copier des fichiers et répertoires
- del : effacer un fichier
- dir : affiche le contenu d'un répertoire
- md : créer un répertoire
- rd : supprimer un répertoire
- <lecteur>: : commutation vers un nouveau lecteur racine
- \ : séparateur

2. se déplacer dans le répertoire de création d'archive
-------------------------------------------------------

<project-path>\lib\

3. copier physiquement les fichiers objets après compilation dans le répertoire obj
-----------------------------------------------

<project-path>\lib\obj\

4. créer la bibliothèque statique - <your_path>\Microchip\xc8\<your_version>\bin\xc8.exe
-----------------------------------------------

xc8 --chip=18f27k40 --output=lpp obj/*.p1 -Obsplib_tiny.lpp


