sudo apt update && sudo apt upgrade -y
sudo timedatectl set-timezone Asia/Tokyo
sudo apt -y install task-japanese locales-all fonts-ipafont
sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale
sudo apt -y install fcitx-mozc
echo "/usr/bin/fcitx-autostart" >> ~/.sommelierrc
sudo cp /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf.bak
chmod 777 /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo Environment='"GTK_IM_MODULE=fcitx"' >> /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo Environment='"QT_IM_MODULE=fcitx"' >> /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo Environment='"XMODIFIERS=@im=fcitx"' >> /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo Environment='"GDK_BACKEND=x11"' >> /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
chmod 644 /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo "Japanese input environment setup successful"
