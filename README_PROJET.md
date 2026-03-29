# Projet Monde Universitaire - Ontologie

Ce projet contient la modélisation d'un environnement universitaire sous forme d'ontologie OWL.

## Fichiers inclus
- `universite_ontology.ttl` : Ontologie au format **Turtle**.
- `universite_ontology.owl` : Ontologie au format **RDF/XML**.
- `README_PROJET.md` : Ce fichier d'instructions.
- `lance_isaviz.bat` : Script de lancement rapide pour IsaViz.

> [!NOTE]
> Le logiciel **IsaViz** n'est pas inclus dans ce dépôt pour des raisons de taille. Vous pouvez le télécharger sur le site officiel du W3C : [https://www.w3.org/2001/11/IsaViz/](https://www.w3.org/2001/11/IsaViz/)

## Structure de l'Ontologie
L'ontologie est organisée autour de 4 axes principaux :
1. **Personne** : `Etudiant`, `Professeur`.
2. **Organisation** : `Universite`, `Faculte`, `Departement`.
3. **Activite** : `Cours`.
4. **Infrastructure** : `Salle`.

### Instances incluses
- **Université de Nouakchott Al Aasriya**
- **Faculté des Sciences et Techniques (FST)**
- **Département de Mathématiques et Informatique**
- **Étudiants** : Saleck BAYA, Moussa EREBIH
- **Professeur** : M. DIAKITE
- **Salle** : Amphi 7
- **Cours** : Web Sémantique

## Instructions d'utilisation

### 1. Ouvrir avec Protégé
1. Téléchargez et installez [Protégé](https://protege.stanford.edu/).
2. Lancez Protégé.
3. Allez dans `File` -> `Open...` et sélectionnez le fichier `universite_ontology.owl`.
4. Vous pouvez visualiser la hiérarchie dans l'onglet **Entities** -> **Classes**.
5. Les données (individus) se trouvent dans l'onglet **Entities** -> **Individuals**.

### 2. Visualiser avec IsaViz
1. Double-cliquez sur le fichier **`lance_isaviz.bat`** que j'ai créé à la racine du dossier.
2. Une fois IsaViz ouvert :
   - Allez dans `File` -> `Import...` -> `RDF/XML...`
   - Sélectionnez votre fichier `universite_ontology.owl`.
3. L'outil générera un graphe RDF montrant les relations entre les différents concepts.

**Note :** J'ai déjà installé **Graphviz** pour vous et configuré IsaViz pour qu'il l'utilise correctement.

## Relations clés modélisées
- `estInscritA` : Relie un Etudiant à son Université.
- `suitUnCours` : Relie un Etudiant à un Cours.
- `enseigneUnCours` : Relie un Professeur à un Cours.
- `faitPartieDe` : Relie un Département à une Faculté, et une Faculté à une Université.
- `estLocaliseDans` : Relie un Cours à une Salle.
