#!/bin/bash

echo "Creating frontEnd and backEnd folders"

mkdir backend

npx create-react-app frontend 

cd frontend

npm install axios

