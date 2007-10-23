if [ -n "${dhc_dbus}" ]; then
   /usr/bin/dbus-send \
       --system \
       --dest=com.redhat.dhcp \
       --type=method_call \
       /com/redhat/dhcp/$interface \
       com.redhat.dhcp.set \
       'string:'"`env | /bin/egrep -v '^(PATH|SHLVL|_|PWD|dhc_dbus)\='`";
       if (( ( dhc_dbus & 31 ) == 31 )); then
           exit 0;
       fi;
fi;

make_resolv_conf() {
  if [ x$PEER_DNS = x ] || [ x$PEER_DNS = xyes ]; then
    if [ x$new_domain_name != x ] || [ x$new_domain_name_servers != x ]; then
      conf="# Generated by dhclient for interface $interface\n"
      if [ x$new_domain_name != x ]; then
        conf="${conf}search $new_domain_name\n"
      fi
      for nameserver in $new_domain_name_servers; do
        conf="${conf}nameserver $nameserver\n"
      done
      if [ -x /sbin/resolvconf ]; then
        echo -e "$conf" | resolvconf -a "$interface"
      else
        echo -e "$conf" > /etc/resolv.conf
        chmod 644 /etc/resolv.conf
      fi
    fi
  fi
}

