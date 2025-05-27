@echo off
REM Run this script from the project root directory

echo Installing Node.js dependencies...
npm install

echo Compiling smart contracts...
truffle compile

echo Migrating smart contracts to local blockchain...
truffle migrate

echo Bundling frontend JavaScript...
browserify ./src/js/app.js -o ./src/dist/app.bundle.js
browserify ./src/js/login.js -o ./src/dist/login.bundle.js

echo Starting Node.js server...
start cmd /k "node index.js"

echo Please start Ganache manually before running this script to avoid migration errors.
echo Also, ensure you have Node.js version 18.14.0 installed for browserify to work correctly.
echo For backend API server, run the PowerShell script setup_fastapi_env_and_run.ps1 separately.

pause
