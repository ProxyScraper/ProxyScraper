echo "Getting Proxy List..."

curl -sL $URL_HTTP -o http.txt
echo "Getting Proxy HTTP Complate."
curl -sL $URL_SOCKS4 -o socks4.txt
echo "Getting Proxy SOCKS4 Complate."
curl -sL $URL_SOCKS5 -o socks5.txt
echo "Getting Proxy SOCKS5 Complate"
git pull
echo "Commit Result to Github"
git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_NAME"
git add -A
git commit -m "Update Proxy List: `$(date)`"
git push
