# Adding COSMIC Greeter username and password
getent group cosmic-greeter >/dev/null || groupadd -r -g 600 cosmic-greeter
getent group video >/dev/null || groupadd -r video
getent passwd cosmic-greeter >/dev/null || \
useradd -r -g cosmic-greeter -G video -u 600 -d /var/lib/cosmic-greeter -s /bin/false \
-c "User for COSMIC Greeter" cosmic-greeter

chown -R cosmic-greeter:cosmic-greeter var/lib/cosmic-greeter
