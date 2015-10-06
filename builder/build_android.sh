cd work
echo "Downloading source code..."
git clone --depth 1 https://github.com/rocketchat/Rocket.Chat
cd ..
echo "Building..."
docker run --rm -v $PWD/work:/home/work -v $PWD/build:/home/build -v $PWD/scripts:/scripts rocketchat/meteor12androidbuilder  bash /scripts/buildit.sh
echo "Completed - check build directory"

