# 📱 Installation sur Termux (Android)

Ce guide explique comment installer **Green OPS** sur Termux pour pouvoir le lancer avec une simple commande : `greenops`.

---

## Prérequis

- [Termux](https://f-droid.org/packages/com.termux/) installé (de préférence depuis F-Droid, pas le Play Store qui est obsolète)
- Le dépôt **Green OPS** cloné ou téléchargé sur ton téléphone

---

## Étape 1 — Récupérer le projet

### Option A : avec git (si déjà installé dans Termux)
```bash
pkg install git -y
git clone https://github.com/jason95470-dot/green-ops.git
cd green-ops
```

### Option B : téléchargement manuel
Télécharge le ZIP du dépôt depuis GitHub (`Code` → `Download ZIP`), décompresse-le, puis dans Termux :
```bash
termux-setup-storage
cd /sdcard/Download/green-ops
```

---

## Étape 2 — Lancer l'installateur

```bash
bash install_termux.sh
```

Ce script :
1. Copie `green_ops.html` dans `~/.greenops/`
2. Crée une commande `greenops` accessible depuis n'importe où dans Termux

---

## Étape 3 — Utiliser Green OPS

À partir de maintenant, dans Termux, tape simplement :

```bash
greenops
```

Cela ouvre `green_ops.html` dans le navigateur par défaut de ton téléphone.

---

## Problèmes courants

**"termux-open: command not found" ou rien ne s'ouvre**
```bash
pkg install termux-api -y
```
Puis installe aussi l'application **Termux:API** depuis F-Droid (c'est une appli séparée, obligatoire pour `termux-open`).

**"Permission denied" lors du clonage / accès aux fichiers**
```bash
termux-setup-storage
```
Accepte la permission de stockage demandée par Android.

**Je veux désinstaller**
```bash
rm -rf ~/.greenops
rm $PREFIX/bin/greenops
```

---

## Mise à jour

Si tu modifies `green_ops.html` plus tard, relance simplement :
```bash
bash install_termux.sh
```
Le fichier sera remplacé automatiquement.
