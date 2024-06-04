RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear

if [ -f "tek" ]; then
    echo -e "${RED}Deleting old items.dat...${ENDCOLOR}"
    rm tek
    sleep 1
    echo -e "${GREEN}Updating items.dat...${ENDCOLOR}"
fi

wget -q https://github.com/SpareCeo/spare-auth/blob/main/items.dat
echo -e "${GREEN}items.dat Downloaded${ENDCOLOR}"

echo -e "${GREEN}Installing Spare Proxy...${ENDCOLOR}"
sleep 1
if [ -f "spare" ]; then
    echo -e "${RED}Deleting old spare proxy...${ENDCOLOR}"
    rm spare
    sleep 1
    echo -e "${GREEN}Updating spare proxy...${ENDCOLOR}"
fi
wget -q https://github.com/SpareCeo/spare-auth/blob/main/spare
sleep 1
echo -e "${GREEN}Spare Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute spare proxy with this command: ./spare${ENDCOLOR}"
chmod +x spare
