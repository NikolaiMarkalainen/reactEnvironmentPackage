#!/bin/bash

echo "Creating frontEnd and backEnd folders"

mkdir backend

npx create-react-app frontend 

cd frontend

cd public

echo "Removing files from public"

rm -r favicon.ico
rm -r logo192.png
rm -r logo512.png
rm -r robots.txt
rm -r manifest.json

cd ..

cd src

echo "Removing files from Src"

rm -r App.test.js
rm -r index.css
rm -r logo.svg
rm -r reportWebVitals.js
rm -r setupTests.js

cd ..

echo "Writing to files..."

cd public

echo -e "<!DOCTYPE html> <html lang=\"en\">\n <head>\n <meta charset=\"utf-8\" />\n <link rel=\"icon\" href=\"#\" />\n <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n<meta name=\"theme-color\" content=\"#000000\" />\n<meta\nname=\"description\"\ncontent=\"Web site created using create-react-app\"\n/>\n<title>Blog</title>\n</head>\n<body>\n<noscript>You need to enable JavaScript to run this app.</noscript>\n<div id=\"root\"></div>\n</body>\n</html>\n"  >  index.html

cd ..

cd src

echo -e "import React from 'react'\nimport ReactDOM from 'react-dom/client'\nimport App from './App'\nReactDOM.createRoot(document.getElementById('root')).render(<App/>)\n " > index.js

echo -e "import './App.css';
import {useEffect, useState} from 'react';

const App = () => {
  return (
    <h1>Hello WORLD</h1>
  );
}

export default App;" > App.js
npm install axios

echo -e "" > App.css

echo "Front end setup with axios installed"

sleep 1

cd ..
cd ..
cd backend

npm init --yes



