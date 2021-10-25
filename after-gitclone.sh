#!/bin/bash

if node -v
then 
    echo "node exists" 
else
    # echo "node does not exist"
    #brew install node
    echo "Installing node."
fi

if watchman -v
then 
    echo "watchman exists" 
else
    # echo "watchman does not exist"
    # brew install watchman
	echo "Installing watchman."
fi

if pod --version 
then 
    echo "pod exists" 
else
    # echo "pod does not exist"
    # sudo gem install cocoapods
        echo "Installing gem."
fi

cd server 

if [ -d "utils" ]
then
    echo "utils folder exists"
else
    # mkdir utils
        echo "mkdir utils."
fi

# npm i
echo "npm i"
echo "cd .."
# cd ..
# npm i
echo "npm i"
echo "cd ios"
# cd ios

if [ -d "Pods" ]
then 
    echo "Pods folder exists"
else
    # pod install
    echo "pod install."
fi

echo "cd .."
# cd ..
echo "npx react-native run-ios"
# npx react-native run-ios