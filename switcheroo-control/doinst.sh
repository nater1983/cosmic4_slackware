if ! grep -q '/usr/libexec/switcheroo-control' etc/rc.d/rc.local; then
  cat << 'EOF' >> etc/rc.d/rc.local

# Start Switcheroo-Control daemon:
if [ -x /usr/libexec/switcheroo-control ]; then
  echo "Starting Switcheroo-Control Daemon: /usr/libexec/switcheroo-control &"
  /usr/libexec/switcheroo-control &
fi
EOF
fi
