# Set time zone to UTC+3
sudo timedatectl set-timezone Europe/Istanbul

# Enable NTP and system clock sync
sudo timedatectl set-ntp true

# Update
sudo apt update

# Get ssmtp & mailutils and install them without a prompt
sudo apt install ssmtp -y
sudo apt install mailutils -y

# Overwrite existing configs
cp /opt/scripts/ssmtp.conf /etc/ssmtp/ssmtp.conf

# Set a cron job for backup.sh to be execute on everyday @ 23:05
echo '* *     * * *   root    cd /opt/scripts/ ; ./backup.sh >/dev/null 2>&1' >> /etc/crontab
echo '* *     * * *   root    cd /opt/scripts/ ; ./disk_usage_alert.sh >/dev/null 2>&1' >> /etc/crontab