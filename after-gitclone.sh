#!/bin/bash

if node -v
then 
    echo "node exists" 
else
    # echo "node does not exist"
    brew install node
fi

if watchman -v
then 
    echo "watchman exists" 
else
    # echo "watchman does not exist"
    brew install watchman
fi

if pod --version 
then 
    echo "pod exists" 
else
    # echo "pod does not exist"
    sudo gem install cocoapods
fi

cd server 

if [ -d "utils" ]
then
    echo "utils folder exists"
else
    mkdir utils
fi

npm i
cd ..
npm i
cd ios

if [ -d "Pods" ]
then 
    echo "Pods folder exists"
else
    pod install
fi

cd ..
npx react-native run-ios