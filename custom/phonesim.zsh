# NOT USED -> Services in system.d are nicer...
# Start phonesim modem
#
function restart_phonesim {
    echo "Starting phonesim"
    # ofono-phonesim -p 12345 /usr/share/phonesim/default.xml & # Already started by /etc/systemd/system/phonesim.service ?
    sudo service phonesim restart
    sudo service ofono restart
    /usr/share/ofono/scripts/enable-modem /phonesim
    /usr/share/ofono/scripts/list-modems
    sudo service bluetooth restart
}
#
#
# Start phonesim if not started yet
# 
# ps ax -ef | grep ofono-phonesim | grep -v grep > /dev/null || {
# start_phonesim;
#}

