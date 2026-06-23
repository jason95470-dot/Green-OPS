# 🟢 Green OPS

> Un index terminal de 279 outils CLI, dans un seul fichier HTML. Esthétique hacker, recherche en direct, filtres par risque.

![statut](https://img.shields.io/badge/statut-actif-39ff7a?style=flat-square)
![licence](https://img.shields.io/badge/licence-MIT-1f8a4d?style=flat-square)
![plateformes](https://img.shields.io/badge/plateformes-Termux%20%7C%20Windows%20%7C%20Web-39ff7a?style=flat-square)

---

## C'est quoi ?

**Green OPS** est une application web autonome (un seul fichier `.html`, aucune dépendance) qui présente une base de 279 outils en ligne de commande, classés par catégorie et par niveau de risque.

- 🔍 Recherche en direct (nom, description, catégorie)
- 🗂️ Filtres par catégorie (Système, Réseau, Sécurité, Développement...)
- 🚦 Code couleur par risque : `safe` / `caution` / `danger`
- ⌨️ Navigation 100% clavier (`/` pour chercher, flèches pour naviguer, `Esc` pour réinitialiser)
- 🖥️ Esthétique terminal CRT (scanlines, glow vert, horloge en direct)

Aucune installation de dépendances, aucun serveur : tu ouvres le fichier, ça marche.

---

## Aperçu rapide

| Catégorie       | Outils |
|-----------------|-------:|
| Système         | 51     |
| Fichiers        | 47     |
| Développement   | 42     |
| Réseau          | 41     |
| Texte           | 32     |
| Sécurité        | 28     |
| Fun & Divers    | 16     |
| Archives        | 11     |
| Multimédia      | 11     |
| **Total**       | **279**|

---

## Installation

Deux guides détaillés sont disponibles selon ta plateforme :

- 📱 **[Guide Termux (Android)](docs/INSTALL_TERMUX.md)**
- 🪟 **[Guide Windows (CMD / Win+R)](docs/INSTALL_WINDOWS.md)**

### En une phrase

**Termux :**
```bash
bash install_termux.sh && greenops
```

**Windows :**
```bat
greenops.bat
```
ou, après installation complète, tape simplement `greenops` dans Win+R.

---

## Structure du dépôt

```
green-ops/
├── green_ops.html         # L'application (fichier unique)
├── install_termux.sh       # Installateur Termux
├── greenops.bat            # Lanceur Windows simple
├── install_windows.ps1     # Installateur Windows (commande globale)
├── docs/
│   ├── INSTALL_TERMUX.md
│   └── INSTALL_WINDOWS.md
└── README.md
```

---

## Échelle de risque

| Niveau     | Couleur | Signification                                              |
|------------|---------|--------------------------------------------------------------|
| `safe`     | 🟢 vert  | Usage courant, sans danger pour le système                  |
| `caution`  | 🟠 orange| Modifie le système, le réseau ou des fichiers — à vérifier  |
| `danger`   | 🔴 rouge | Destructeur, nécessite les droits admin, ou usage offensif   |

---

## Auteur

Projet créé et maintenu par **Djibril**.

## Licence

MIT — libre d'utilisation, de modification et de partage.
