## **Assignment 1 - Backup Script**

> Task: Backup home directories of all users in the system with given configurations.

### _Configurations_

```
BACKUP_TARGET_DIR = /home
BACKUP_DEST_DIR = /mnt
BACKUP_FORMAT = username-date-time.tar.gz
INTEGRITY_VERIFICATION_METHOD = MD5
CHECKSUM_DEST_DIR = /mnt
LOGS_DEST_DIR = /tmp
AUTO_RUN_PERIOD = Everyday @ 23:05
```

### _Example_

```
yedek adi: username_01011987_2201.tar.gz
md5_sum_dosya_adi: username_01011987_2201.tar.gz.md5.txt
son_calisma_saati: /tmp/yedekleme_scripti_son_calisma_saati.log
```
