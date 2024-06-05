RED="\e[1;31m"
GREEN="\e[1;32m"
ENDCOLOR="\e[0m"

clear

# Remove existing files
if [ -f "spare_install.sh" ]; then
    rm spare_install.sh
fi

if [ -f "tek" ]; then
    echo -e "${RED}Deleting old items.dat...${ENDCOLOR}"
    rm tek
    echo -e "${GREEN}Updating items.dat...${ENDCOLOR}"
fi

# Download items.dat
echo -e "${GREEN}Downloading items.dat...${ENDCOLOR}"
if ! wget -qN https://raw.githubusercontent.com/SpareCeo/spare-auth/main/items.dat; then
    echo -e "${RED}Failed to download items.dat.${ENDCOLOR}"
    exit 1
fi
echo -e "${GREEN}items.dat Downloaded${ENDCOLOR}"

# Install Spare Proxy
echo -e "${GREEN}Installing Spare Proxy...${ENDCOLOR}"
if [ -f "spare" ]; then
    echo -e "${RED}Deleting old spare proxy...${ENDCOLOR}"
    rm spare
    echo -e "${GREEN}Updating spare proxy...${ENDCOLOR}"
fi

echo -e "${GREEN}Downloading Spare Proxy...${ENDCOLOR}"
if ! wget -qN https://raw.githubusercontent.com/SpareCeo/spare-auth/main/spare; then
    echo -e "${RED}Failed to download Spare Proxy.${ENDCOLOR}"
    exit 1
fi
echo -e "${GREEN}Spare Proxy Installed${ENDCOLOR}"
echo -e "${GREEN}Execute spare proxy with this command: ./spare${ENDCOLOR}"
chmod +x spare
