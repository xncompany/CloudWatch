#!/bin/bash

title() {
    echo -e "\n\033[0;33m$1\033[0m"
}

bye() {
    echo -e "\nbye."
}

error() {
    echo -e "\t\033[0;31m✖ Ooops...\033[0m $1"
}

check() {
	response=$(curl --write-out %{http_code} --silent --output /dev/null "$1")

	if [ $response != "200" ]; then
		alert $1
	fi
}

alert() {
	error "$1"
	response=$(curl -X POST --data-urlencode "payload={\"channel\": \"#cloudwatch\", \"username\": \"amazon\", \"text\": \"La aplicacion $1 no está funcionando.\", \"icon_url\": \"https://sdk-for-net.amazonwebservices.com/images/AWSLogo128x128.png\"}" --silent --output /dev/null https://hooks.slack.com/services/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)
}
