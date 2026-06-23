# 🪟 Installation sur Windows (CMD / Win+R)

Ce guide explique comment lancer **Green OPS** sur Windows, soit en local simple, soit comme une vraie commande accessible depuis n'importe où (CMD, Win+R, PowerShell).

---

## Option A — Lancement rapide (sans installation)

1. Télécharge ou clone le dépôt.
2. Double-clique sur `greenops.bat`.

C'est tout. Le fichier `green_ops.html` s'ouvre dans ton navigateur par défaut. Cette méthode fonctionne uniquement si tu restes dans le dossier du projet.

---

## Option B — Commande globale `greenops` (recommandé)

Cette méthode te permet de taper `greenops` depuis **Win+R**, CMD, ou PowerShell, **peu importe où tu es** sur ton PC.

### Étape 1 — Cloner ou télécharger le projet

```bat
git clone https://github.com/jason95470/green-ops.git
cd green-ops
```

Ou télécharge le ZIP depuis GitHub (`Code` → `Download ZIP`) et décompresse-le.

### Étape 2 — Lancer l'installateur PowerShell

Clic droit sur `install_windows.ps1` → **"Exécuter avec PowerShell"**.

Si Windows affiche une erreur de sécurité (politique d'exécution bloquée), ouvre PowerShell manuellement et tape :

```powershell
powershell -ExecutionPolicy Bypass -File install_windows.ps1
```

Ce script :
1. Copie `green_ops.html` dans `%LOCALAPPDATA%\GreenOps\`
2. Crée un lanceur `greenops.bat` propre dans ce même dossier
3. Ajoute ce dossier au `PATH` de ton compte utilisateur

### Étape 3 — Redémarrer le terminal

Ferme **toutes** les fenêtres CMD/PowerShell ouvertes (le `PATH` ne se met à jour qu'au redémarrage du terminal).

### Étape 4 — Utiliser Green OPS

Tape, depuis n'importe où :

```bat
greenops
```

Ou directement depuis **Win+R** :
```
greenops
```

---

## Problèmes courants

**"greenops n'est pas reconnu en tant que commande"**
→ Le terminal n'a pas été redémarré après l'installation. Ferme et rouvre CMD, ou redémarre le PC.

**PowerShell refuse d'exécuter le script (erreur de policy)**
```powershell
powershell -ExecutionPolicy Bypass -File install_windows.ps1
```

**Je veux désinstaller**
1. Supprime le dossier `%LOCALAPPDATA%\GreenOps`
2. Retire ce dossier du PATH : Paramètres Windows → "Modifier les variables d'environnement" → Variables utilisateur → `Path` → Modifier → supprime la ligne correspondante

---

## Mise à jour

Si `green_ops.html` est modifié, relance simplement l'installateur PowerShell (Étape 2) : il remplace l'ancienne version automatiquement.
