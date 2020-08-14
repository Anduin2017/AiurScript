add_caddy_file()
{
    domain_name="$1"
    path="$2"
    cat /etc/caddy/Caddyfile | grep -q "an easy way" && echo "" > /etc/caddy/Caddyfile
    echo "
$domain_name {
    root * $path
    file_server
}" >> /etc/caddy/Caddyfile
    systemctl restart caddy.service
}

add_caddy_file "$@"