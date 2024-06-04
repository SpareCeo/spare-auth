RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear

if [ -f "items.dat" ]; then
    echo -e "${RED}Deleting Old items.dat...${ENDCOLOR}"
    rm items.dat
    sleep 1
    echo -e "${GREEN}Updating items.dat...${ENDCOLOR}"
fi

wget -q https://github.com/SpareCeo/spare-auth/raw/main/items.dat
echo -e "${GREEN}items.dat Downloaded${ENDCOLOR}"

if [ -f "spare" ]; then
    echo -e "${RED}Deleting Old Spare Proxy...${ENDCOLOR}"
    rm spare
    sleep 1
    echo -e "${GREEN}Updating Spare Proxy...${ENDCOLOR}"
fi

wget -q https://github.com/SpareCeo/spare-auth/raw/main/spare
sleep 1
echo -e "${GREEN}Spare Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute Spare Proxy with this command: ./spare${ENDCOLOR}"
chmod +x spare
