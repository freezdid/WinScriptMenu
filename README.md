# WinScriptMenu
Met l'accent sur les scripts Windows et les menus contextuels.

# Démonstration

<div>
<a href="https://imgur.com/pFerQlo"><img src="https://i.imgur.com/pFerQlo.gif" title="source: imgur.com" width="800" height="600" /></a>
<a href="https://imgur.com/9qozfmp"><img src="https://i.imgur.com/9qozfmp.gif" title="source: imgur.com" width="800" height="600" /></a>
<a href="https://imgur.com/jsxufHh"><img src="https://i.imgur.com/jsxufHh.jpeg" title="source: imgur.com" width="450" height="450" /></a>
<a href="https://imgur.com/m8NIYEC"><img src="https://i.imgur.com/m8NIYEC.jpeg" title="source: imgur.com" width="800" height="450" /></a>
</div>


# Personnalisation du Menu Contextuel de Windows 11

Ce repository contient des scripts et des fichiers de registre pour personnaliser le menu contextuel de Windows 11, ajoutant des fonctionnalités utiles pour améliorer votre expérience.

## Fonctionnalités incluses

### 1. Nettoyage des Fichiers Temporaires

En ajoutant cette fonctionnalité au menu contextuel, vous pourrez rapidement nettoyer les fichiers temporaires inutiles de votre système, y compris ceux situés dans `%windir%`, `%temp%`. Cela permet de libérer de l'espace disque et d'optimiser les performances de votre ordinateur.

1. Effectuez l'ajout du fichier `CLEANER.cmd` dans le répertoire `System32` en effectuant simplement une copie-coller du fichier dans le répertoire `C:\Windows\System32`.

2. Faites un double-clic sur le fichier `contextmenu_cleaner_reg.reg` pour l'exécuter.

3. Confirmez toute boîte de dialogue d'avertissement qui peut apparaître pour appliquer les modifications au registre.

4. Une fois les modifications appliquées, vous pourrez accéder à la fonction de nettoyage des fichiers temporaires directement à partir du menu contextuel en faisant un clic droit sur le bureau.

Assurez-vous de suivre ces étapes avec soin pour personnaliser votre menu contextuel avec la fonction de nettoyage des fichiers temporaires.

### 2. Changement de Profil du Plan d'Alimentation

Le menu contextuel vous offre la possibilité de basculer entre les profils du plan d'alimentation de Windows, passant de "Normal" à "Performance Optimale". Cela peut être utile lorsque vous avez besoin de maximiser les performances de votre système pour des tâches exigeantes.

1. Faites un double-clic sur le fichier `contextmenu_powerplan_reg.reg` pour l'exécuter.

2. Confirmez toute boîte de dialogue d'avertissement qui peut apparaître pour appliquer les modifications au registre.

3. Une fois les modifications appliquées, vous pourrez accéder à la fonction de changement de profil du plan d'alimentation directement à partir du menu contextuel en faisant un clic droit sur le bureau.

Assurez-vous de suivre ces étapes avec soin pour personnaliser votre menu contextuel avec la fonction de changement de profil du plan d'alimentation.

### 3. Vérification des ouvertures de session windows utilisateur

En ajoutant cette fonctionnalité au menu contextuel, vous pourrez rapidement vérifier les ouvertures de session Windows des utilisateurs, y compris celles situées dans l'Observateur d'événements. Cela permet d'obtenir une vue précise des ouvertures et fermetures depuis un fichier journal nommé `outputStartSessionLog.txt`, qui récapitule ligne par ligne les champs suivants : `date/time`, `utilisateur`, `ouverture/fermeture` de la session.

Ajoutez le fichier `startsessionlog.cmd` dans le répertoire System32 en effectuant simplement une copie-coller du fichier dans le répertoire `C:\Windows\System32`.
2. Double-cliquez sur le fichier `contextmenu_startsessionlog.reg` pour l'exécuter.   

Confirmez toute boîte de dialogue d'avertissement qui peut apparaître pour appliquer les modifications au registre.

Une fois les modifications appliquées, vous pourrez accéder à la fonction de vérification des ouvertures ou fermetures de session Windows utilisateur directement à partir du menu contextuel en faisant un clic droit sur le bureau.   

### 4. Analyse par VirusTotal et Calcul du Hash de Fichier

## Prérequis
Avant d'utiliser les fonctionnalités du menu contextuel, assurez-vous de disposer des éléments suivants :
- [Téléchargez Sigcheck](https://download.sysinternals.com/files/Sigcheck.zip) et extrayez les fichiers nécessaires.
- [sigcheck64.exe](https://download.sysinternals.com/files/Sigcheck.zip) : Ce logiciel est nécessaire à l'utilisation du menu contextuel qui permet de faire des analyses par VirusTotal.

Assurez-vous que ces prérequis sont téléchargés et prêts à être utilisés avant d'activer les fonctionnalités du menu contextuel.

Lorsque vous effectuez un clic droit sur un fichier, vous avez désormais la possibilité de vérifier le fichier en ligne avec VirusTotal pour détecter d'éventuelles menaces. Vous pouvez également calculer le hash (hachage) du fichier pour vérification d'intégrité.

1. Effectuez l'ajout du fichier `contextmenu_scantovt.cmd` et `sigcheck64.exe` dans le répertoire `System32` en effectuant simplement une copie-coller du fichier dans le répertoire `C:\Windows\System32`

2. Faites un double-clic sur le fichier `contextmenu_scantovt.reg.reg` pour l'exécuter.

3. Confirmez toute boîte de dialogue d'avertissement qui peut apparaître pour appliquer les modifications au registre.

4. Une fois les modifications appliquées, vous pourrez accéder à la fonction de d'analyse de fichier par Virustotal directement à partir du menu contextuel en faisant un clic droit sur un fichier.

## Comment Utiliser

1. Cloner ce repo sur votre machine locale.

2. Suivre correctement les étapes pas a pas.

3. Exécutez les scripts ou fusionnez les fichiers de registre en fonction des fonctionnalités que vous souhaitez ajouter à votre menu contextuel.

4. Redémarrez l'explorateur Windows ou ouvrez une nouvelle session pour que les modifications prennent effet.

5. Profitez de vos nouvelles fonctionnalités du menu contextuel !

## Contributions

Les contributions et les suggestions d'amélioration sont les bienvenues. Si vous avez des idées pour de nouvelles fonctionnalités ou des améliorations, n'hésitez pas à ouvrir une "Issue" ou à envoyer une "Pull Request".

## *Avertissement*

Manipulez les fichiers système avec précaution et assurez-vous de comprendre les implications de l'ajout de fichiers dans le répertoire System32. Faites des sauvegardes de vos fichiers système au besoin.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE.md](WinScriptMenu/LICENCE.md) pour plus de détails.

N'hésitez pas à explorer les scripts et les fichiers de registre inclus dans ce repository pour personnaliser votre menu contextuel sous Windows 11. 

Améliorez votre productivité et votre expérience utilisateur en ajoutant ces fonctionnalités pratiques !

