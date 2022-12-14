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

mkdir components 
mkdir services
cd services
touch request.js
cd ..

echo -e "import React from 'react'\nimport ReactDOM from 'react-dom/client'\nimport App from './App'\nReactDOM.createRoot(document.getElementById('root')).render(<App/>)\n " > index.js

echo -e "import './App.css';\nimport {useEffect, useState} from 'react';\nconst App = () => {\n  return (\n    <h1>Hello WORLD</h1>\n  );\n}\nexport default App;" > App.js

echo -e "" > App.css

cd ..

npm install axios

echo "Front end setup with axios installed"

sleep 1

cd ..
cd backend

npm init --yes

npm install express
npm install --save-dev nodemon
npm install cors
npm install dotenv
touch .env
echo -e ".env"  | tee -a > .gitignore


echo ""
echo ""

npm install eslint --save-dev
npx eslint --init --skip-prompts


touch .eslintignore
echo -e "build" > .eslintignore
npm install --save-dev supertest
npm install express-async-errors
echo ""
echo ""
echo "Installed express, nodemon, cors, dotenv, eslint, supertest, express-async-errors"

mkdir tests
mkdir requests
mkdir models
mkdir controllers
mkdir utils

cd utils
touch middleware.js
touch test_helper.js
touch config.js
touch logger.js

cd ..

cd tests
touch dummy.test.js

cd .. 

cd models
touch blank.js
echo -e "//Create a model for your database for example with mongo create scheme ect" > blank.js

cd ..

cd requests
touch create_blank.rest
touch post_blank.rest
touch get_blank.rest
touch delete_blank.rest

cd ..

cd controllers
touch blank.js
echo -e "//create server request methods with your data and export as a variable to app.js" > blank.js

cd ..
