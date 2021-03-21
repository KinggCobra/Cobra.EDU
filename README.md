#  ![](https://images.vexels.com/media/users/3/205763/isolated/lists/9a29b835f3e8d8817e346aab90886421-india-snake-charmer.png)  COBRA.EDU : Suivi des étudiants dans une formation à la carte. 
L3 Miage, projet de programmation


[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)  [![forthebadge](http://forthebadge.com/images/badges/powered-by-electricity.svg)](http://forthebadge.com)

L’objet de l’application est de suivre les étudiants : les inscrire aux enseignements, voir où ils en sont de leur
parcours et saisir les enseignement validés.

## Pour commencer
**Fonctionnalité :**
Inscrire un étudiant à un enseignement
voir parcours d’un étudiant 
ajouter enseignement validés
1 année universitaire : 2020-2021 avec 2 Semestre : pair (début) & impair (fin)

**Formations et UE :**

1 formation : 1 mention & plusieurs parcours ( mention MIASHS parcours MIAGE)
Chaque cours possède des UE lié à des mentions
1 UE : crédits ECTS & codeUE
Faire des prérequis.
UE sans prérequis : semestre pair

**Etudiant:**

Défini par numEtu, prénom, nom et inscrit à un parcours d’une mention
Chaque étudiant aura un suivi de toute ses UE + Année correspondante à l’UE ( soit 2 variables UE/ANNEE) et si validé.

**Objectif:**

Charger les données d’un CSV et l’envoyer sur la BD. CSV = { Mentions, parcours, UE, liste etudiants}
Charger la BD avec un document depuis le PC.
Rôle d’utilisateur : directeur d’étude, secrétariat pédagogique, bureau des examens, étudiant

**Visualisation  :**

”Directeur d’étude”;  liste des étudiants, triables par mention et parcours.
Pouvoir sélectionner un étudiant.
Accessible:
- les UE que l’étudiant a déjà validé 
- les UE que l’étudiant suit actuellement (potentiellement vide en inter-semestre) 
- les UE pour lesquels l’étudiant a les prérequis. C

Pouvoir filtrer par mention &parcours, voir les UE d’ouverture.

**Inscriptions:**

"Secretariat Pedagogique”. Accès à la liste d’étudiant, la sélection d’un étudiant et affiche la liste des UE dont l’étudiant a les prérequis. Pouvoir filtrer & trier la liste.

**Saisie des résultats:**

"Bureau des examens”. Donne accès à la liste des UE triable et filtrable, sélectionner une UE donne la liste des étudiants inscrits, avec possibilité de cocher si l’UE est validée.



### Pré-requis

- des fichiers de données permettant de tester extensivement les fonctionnalités de l’application.
- la javadoc de l'application
- un diagramme de classes.
- un fichier .jar permettant le déploiement de l’application.
- le MCD 

### Installation

- Telecharger XAMP
- Ouvrir Apache & MySql
- Se rendre sur PHPMyAdmin pour accéder à la BD
- Ouvrir le .jar
- Lancer Netbeans
- Ajouter les librairies jcalendar, jfreechart, mysqlconnector
- Lancer le projet depuis Netbeans


## Fabriqué avec

Programmes/logiciels/resources que nous avons utilisé pour développer notre projet :

* [Netbeans 8.2](https://netbeans.org/downloads/8.2/rc/) 
* [SQL Connector Java ](https://dev.mysql.com/downloads/connector/j/) - Connexion entre le code et notre base de données.
* [GIT & GITHUB](https://github.com/) - Travail collaboratif
* [PHPMyAdmin](https://www.phpmyadmin.net/) - Base de données

## Détail du fonctionnement 
### Inscription et Connexion

Lors du lancement nous tombons sur une page d'accueil où il est demandé de se connecter. 
Pour se connecter, entrer identifiant et mot de passe puis cliquer sur Connexion
Pour s'inscrire, cliquer sur le bouton s'inscrire et rentrer toutes les données personnelles demandées
Il s'agit du Nom, prénom, mot de passe, confirmation du mot de passe et type de personne 
Type de personne correspond à Etudiant, Directeur d'étude, Secrétariat pédagogique ou Bureau des Examens.
    - Le bouton ajouter permet d'ajouter le nouvel utilisateur dans la base de données
    - Le bouton annuler fait fermer la fenêtre
Le bouton Annuler permet de fermer la fenêtre de connexion. 

## Accueil

Une fois que l'on s'est connecté nous arrivons sur la page d'accueil. 
Sur celle-ci, plusieurs fonctionnalités apparaissent
Dans un premier temps, il est possible de voir le nombre de cours dans l'application en bas a droite 
Il est également possible de voir le nombre d'étudiants inscrits dans l'application en bas à gauche.
Pour se déconnecter, il suffit de cliquer déconnexion en bas de la page d'Accueil. 
Cela va nous ramener sur la page de connexion/inscription précédemment détaillée. 

    1. Le Menu Etudiant 
    
Deux options sont disponibles dans le menu étudiant: Ajouter Etudiant et Gerer

La fenêtre ajouter Etudiant permet d'ajouter un étudiant à la base de donnée
Pour cela, il faut rentrer : - la formation de l'étudiant 
                             - le prénom de l'étudiant 
                             - le nom de l'étudiant
                             - le sexe de l'étudiant 
                             - la date de naissance de l'étudiant
                             - le numéro de téléphone de l'étudiant 
                             - l'adresse de l'étudiant 
 Remarque: Il est obligatoire de remplir tous les champs. 
 Une fois que tous les champs sont remplis, il faut cliquer sur "ADD" pour l'ajouter à la base de données.
 Le bouton "Cancel" permet d'annuler à tout moment l'ajout de l'étudiant. 
 
 La fenêtre Gérer permet de gérer les différents étudiants: 
 On peut voir les différents étudiants qui sont inscrits
 Il est également possible de rechercher un étudiant via un mot clé: 
 Pour cela, il suffit de rentrer le mot clé et les étudiants qui correspondent vont s'afficher. 
 Il est également possible de sélectionner un étudiant et de modifier les informations de l'étudiant dans le menu de gauche 
 En cliquant ensuite sur "Edit" les nouvelles informations de l'étudiant vont s'enregistrer. 
 La suppression d'un étudiant est également possible en sélectionnant un étudiant et en cliquant sur le boutton "remove"
 Finalement, on peut aussi ajouter un étudiant de la même manière qu'avec la fenêtre "Ajouter Etudiant" 
 
   2 Le Menu UE 
   
  En cliquant sur le bouton UE en haut de la fenêtre d'accueil, il est possible de gérer les UE
  Le bouton Ajouter UE permet d'ajouter une UE dans la base de données. Il faut pour cela mentionner le nom, le nombre d'heures et les ECTS correspondants
  Ensuite, pour valider il suffit de cliquer sur "ADD"
  Pour annuler il faut cliquer sur "Cancel"
  
  En cliquant sur Manage, on peut voir les différentes UE qui sont inscrites dans la base de données. 
  Pour en supprimer une, il faut la sélectionner dans les données et cliquer sur "remove"
  Pour en ajouter une, il faut faire la même procédure que précédemment et cliquer sur "ADD"
  Pour modifier une UE, il faut sélectionner l'UE que l'on souhaite modifier et modifier ses champs dans la partie de gauche. 
  Pour enregistrer les changements, cliquer sur Editer. 
  
   
   3 Le Menu Notes 
   
   Pour accéder aux notes, il faut cliquer sur le bouton "Note" en haut de la page d'accueil. 
   Si l'on veut ajouter une note, il faut cliquer sur ajouter note. 
   Ensuite, il faut remplir les champs "Numéro d'étudiant" "ID Cours" "Note" et "Description"
   Une fois que tous les champs sont complétés, il suffit de cliquer sur le bouton "ADD"
   Si on veut annuler, il faut cliquer sur "Cancel".
   
   Maintenant, si on veut modifier une note ou des informations sur celle-ci: 
   Il faut cliquer sur "Editer/Supprimer"
   Dans cette fenêtre on peut ajouter une note de la même manière que précédemment. 
   On peut également modifier les notes en sélectionnant la note puis en modifiant les données dans les champs sur la gauche.
   Il faut ensuite cliquer sur "Modifier"
   Finalement, on peut également supprimer une note en sélectionnant la note et en cliquant sur le bouton "Supprimer". 
   
   Pour finir, on peut juste afficher les notes en cliquant sur "Voir Notes". Toutes les notes seront alors visibles 
   
   
   
   4 Le Menu CSV
   
  Pour accèder à ce menu, il suffit de cliquer sur le bouton "CSV" puis "Importation" en haut de la page d'accueil
  Il faut ensuite sélectionner quel type de données on veut importer : - formation 
                                                                        - étudiant 
                                                                        - Utilisateur 
                                                                        - UE 
                                                                        - Liste d'inscrits
   Pour cela il suffit de cliquer sur le bouton approprié. 
   Il faut ensuite charger un fichier .csv depuis son ordinateur, les données contenues seront insérées dans la base de données. 
    
    
                    


## Versions

**Dernière version stable :** Pas encore de release.
**Dernière version :** Pas encore de release.

Liste des versions : [Cliquer pour afficher](https://github.com/COBRA.EDU/tags) 

## Auteurs

* **Noureddine BEKHDADI** _alias_ [@KinggCobra](https://github.com/kinggcobra)
* **Gaetan SCOPEL** _alias_ [@Jeaneyamarre](https://github.com/Jeaneyamarre)
* **Titouan LACROIX** _alias_ [@Turboroustinator](https://github.com/Turboroustinator)
* **Vinh Phung** _alias_ [@VinhPhung123](https://github.com/VinhPhung123)





