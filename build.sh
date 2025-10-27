if [ "$1" == "firefox" ]; then
    cp ./manifest.firefox.json ./manifest.json
    zip -r ./better-whatsapp.xpi *
elif [ "$1" == "chrome" ]; then
    cp ./manifest.chrome.json ./manifest.json
else
    echo "usage: $0 [firefox|chrome]"
    exit 0
fi
