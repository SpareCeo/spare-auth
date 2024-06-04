RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear

if [ -f "items" ]; then
    echo -e "${RED}Deleting Old Items.dat...${ENDCOLOR}"
    rm items
    sleep 1
    echo -e "${GREEN}Updating Items.dat...${ENDCOLOR}"
fi

wget -q https://github.com/SpareCeo/spare-auth/blob/main/items.dat
echo -e "${GREEN}Items.dat Downloaded${ENDCOLOR}"

if [ -f "arunika" ]; then
    echo -e "${RED}Deleting Old Spare Proxy...${ENDCOLOR}"
    rm spare
    sleep 1
    echo -e "${GREEN}Updating Spare Proxy...${ENDCOLOR}"
fi
wget -q https://github.com/SpareCeo/spare-auth/blob/main/spare
sleep 1
echo -e "${GREEN}Spare Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute Spare Proxy with this command: ./spare${ENDCOLOR}"
chmod +x spare
