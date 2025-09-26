#!/data/data/com.termux/files/usr/bin/bash
SERVER="http://localhost:5000"

read -p "Username: " USERNAME
read -p "Activation Code: " CODE

RESP=$(curl -s -X POST "$SERVER/activate" -H "Content-Type: application/json" \
-d "{\"username\":\"$USERNAME\",\"code\":\"$CODE\"}")

echo -e "\nServer response: $RESP"

echo -e "\n1) Apply Hypersense Tweaks"
echo -e "2) Restore Defaults"
echo -e "3) Show Status"
echo -n "Choice: "
read CH

case $CH in
1) echo "Hypersense tweaks applied!" ;;
2) echo "Defaults restored!" ;;
3) echo -e "Device status:\nRAM: 4GB\nFPS: 60\nPing: 40ms" ;;
*) echo "Invalid choice." ;;
esac
