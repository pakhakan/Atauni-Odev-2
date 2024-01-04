#!/bin/bash

# İlk parametre olarak verilen yetki (izin) değeri
authority="$1"
# İkinci parametre olarak verilen kullanıcı adı
user="$2"
# Üçüncü parametre olarak verilen grup adı
group="$3"
# Değiştireceğimiz dosyanın adı
file="filetochange.sh"

# Dosyaya yetki (izin) atama işlemi
chmod "$authority" "$file"
# Dosyanın sahibini ve grubunu güncelleme işlemi
chown "$user:$group" "$file"


echo "Dosyanın izinleri, sahibi ve grubu güncelledi."
