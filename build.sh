if [ "$1" == "firefox" ]; then
    cp ./manifest.firefox.json ./manifest.json
    if [ -f ./better-whatsapp.xpi ]; then
        rm ./better-whatsapp.xpi
    fi
    zip -r ./better-whatsapp.xpi ./main.css ./manifest.json
elif [ "$1" == "chrome" ]; then
    cp ./manifest.chrome.json ./manifest.json
else
    echo "usage: $0 [firefox|chrome]"
    exit 0
fi
