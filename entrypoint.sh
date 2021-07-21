apk add --no-cache --virtual .build-deps ca-certificates curl
mkdir -m 777 /v2raybin
cd /v2raybin
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
unzip v2ray.zip \
chmod +x /v2raybin/v2ray \
rm -rf v2ray.zip \
chgrp -R 0 /v2raybin \
chmod -R g+rwX /v2raybin 
 
cd /v2raybin

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json

./v2ray
