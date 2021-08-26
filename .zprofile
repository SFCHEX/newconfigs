if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  sudo /usr/bin/prime-switch

  exec startx
fi

