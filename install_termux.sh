#!/data/data/com.termux/files/usr/bin/bash
# ============================================================
#  GREEN OPS - Installateur pour Termux
#  Usage : bash install_termux.sh
#  Apres ca, tape juste "greenops" pour le lancer
# ============================================================

set -e

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[*] Installation de Green Ops pour Termux...${NC}"

# Dossier ou Green Ops va vivre
INSTALL_DIR="$HOME/.greenops"
mkdir -p "$INSTALL_DIR"

# Copie le fichier HTML s'il est present dans le dossier courant
if [ -f "green_ops.html" ]; then
    cp green_ops.html "$INSTALL_DIR/green_ops.html"
    echo -e "${GREEN}[*] Fichier green_ops.html copie dans $INSTALL_DIR${NC}"
else
    echo "[!] green_ops.html introuvable dans le dossier courant."
    echo "    Place ce script et green_ops.html dans le meme dossier, puis relance."
    exit 1
fi

# Cree le lanceur "greenops"
BIN_DIR="$PREFIX/bin"
cat > "$BIN_DIR/greenops" << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash
xdg-open "$HOME/.greenops/green_ops.html" 2>/dev/null || termux-open "$HOME/.greenops/green_ops.html"
EOF

chmod +x "$BIN_DIR/greenops"

echo -e "${GREEN}[OK] Installation terminee !${NC}"
echo ""
echo "    Tape simplement :  greenops"
echo "    ... pour ouvrir Green Ops dans ton navigateur."
echo ""
echo "(Si rien ne s'ouvre, installe d'abord : pkg install termux-api)"
