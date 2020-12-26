#! /bin/sh

# Download latest version
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

# Copy archive into opt dir
sudo tar -xzf postman.tar.gz -C /opt

# Make link
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# Remove archive
rm postman.tar.gz

# Create desktop shortcut
cat > /usr/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL
