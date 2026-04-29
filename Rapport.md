# Rapport de Projet : Ontologie du Monde Universitaire

**Étudiant** : Saleck BAYA (Matricule : C25362) et Moussa EREBIH (Matricule : C21397)
**Projet** : Projet 1 - Monde Universitaire
**Cours** : Web Sémantique

---

## 1. Introduction
Ce rapport accompagne le rendu du "Projet 1 : Monde Universitaire". L'objectif de ce projet est de modéliser les principaux concepts, relations et propriétés qui caractérisent un environnement universitaire, afin de mieux organiser les connaissances dans ce domaine en utilisant le langage formel OWL/RDF.

## 2. Définition des Concepts (Classes)
Pour structurer notre domaine, nous avons identifié plusieurs classes principales, organisées de manière hiérarchique :

*   **EntiteUniversitaire** : La super-classe englobant toute l'ontologie.
    *   **Personne** : Regroupe les acteurs humains.
        *   `Etudiant` : Représente les personnes inscrites à des cours.
        *   `Professeur` : Représente les enseignants.
    *   **Organisation** : Regroupe les divisions administratives.
        *   `Universite` : L'entité globale (ex: l'Université entière).
        *   `Faculte` : Les différentes facultés au sein de l'université.
        *   `Departement` : Les différents départements d'une faculté.
    *   **Activite** : Regroupe tout ce qui concerne le processus éducatif concret.
        *   `Cours` : Les modules enseignés aux étudiants.
    *   **Infrastructure** : Regroupe les bâtiments et lieux physiques.
        *   `Salle` : L'endroit où l'activité se déroule (Amphis, salles de TP).

## 3. Les Relations (Object Properties)
Ces concepts interagissent entre eux via des propriétés d'objet strictement définies par des domaines (*domain*) et des co-domaines (*range*) :

*   `suitUnCours` : Relie un **Etudiant** à un **Cours**.
*   `enseigneUnCours` : Relie un **Professeur** à un **Cours**.
*   `estInscritA` : Relie un **Etudiant** à une **Universite**.
*   `appartientADepartement` : Relie un **Cours** à un **Departement**.
*   `faitPartieDe` : Décrit la relation d'inclusion (un **Departement** fait partie d'une **Faculte**, une **Faculte** fait partie d'une **Universite**).
*   `estLocaliseDans` : Relie un **Cours** à une **Salle**.

## 4. Les Attributs (Data Properties)
Pour détailler nos instances, nous avons ajouté des propriétés de données qui utilisent les types standards de XML Schema (`xsd:string` et `xsd:int`) :

*   `nom` (String) : Le nom complet d'une Personne ou d'une Organisation / Salle.
*   `prenom` (String) : Le prénom d'une Personne.
*   `numEtudiant` (String) : Le matricule académique d'un étudiant.
*   `intituleCours` (String) : Le libellé complet d'un cours.
*   `dureeCours` (Int) : Le volume horaire en heures.

## 5. Cas d'étude (Instances)
Pour valider notre modèle, nous l'avons peuplé avec un scénario concret et cohérent tiré du monde réel :

1.  **L'Université** : *L'Université de Nouakchott Al Aasriya* qui contient la *Faculté des Sciences et Techniques (FST)*.
2.  **Le Département** : Le *Département de Mathématiques et Informatique*, qui fait partie de la FST.
3.  **Le Cours et l'Infrastructure** : Le module *Web Sémantique* (durée 30h) est rattaché à ce département. Ce cours se déroule dans la salle *Amphi 7*.
4.  **Les Acteurs** : 
    *   Le Professeur *Mohamed DIAKITE* enseigne le cours de Web Sémantique.
    *   Les étudiants *Saleck BAYA* (C25362) et *Moussa EREBIH* (C21397) sont inscrits à l'Université de Nouakchott et suivent ce cours de Web Sémantique.

## Conclusion
Cette ontologie couvre l'ensemble des exigences du cahier des charges et utilise les capacités d'héritage et d'inférence de l'outil Protégé pour garantir la constance du graphe RDF généré.
