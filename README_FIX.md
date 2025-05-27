# Fix Instructions for Decentralized Voting System Project

This document provides detailed steps to fix the issues encountered and successfully run the project.

## 1. Start Ganache

- Download and install Ganache from https://trufflesuite.com/ganache/
- Open Ganache and start the "development" workspace.
- Ensure Ganache is running and listening on port 7545.

## 2. Downgrade Node.js

- The project requires Node.js version 18.14.0 for compatibility.
- Download and install Node.js 18.14.0 from https://nodejs.org/en/download/releases/
- After installation, verify with `node -v` that the version is 18.14.0.

## 3. Install Node.js dependencies

- In the project root, run:
  ```
  npm install
  ```

## 4. Compile and migrate smart contracts

- Run:
  ```
  truffle compile
  truffle migrate
  ```

## 5. Bundle frontend JavaScript

- Run:
  ```
  browserify ./src/js/app.js -o ./src/dist/app.bundle.js
  browserify ./src/js/login.js -o ./src/dist/login.bundle.js
  ```

## 6. Start Node.js server

- Run:
  ```
  node index.js
  ```

## 7. Setup and run FastAPI backend

- Create and activate a Python virtual environment:
  ```
  python -m venv venv
  .\venv\Scripts\activate
  ```

- Install dependencies:
  ```
  pip install fastapi mysql-connector-python pydantic python-dotenv uvicorn uvicorn[standard] PyJWT
  ```

- Run the backend server:
  ```
  uvicorn main:app --reload --host 127.0.0.1
  ```

## 8. Access the application

- Open your browser and navigate to http://localhost:8080

## Notes

- Make sure your MySQL database is running and configured as per the README.
- Update the `./Database_API/.env` file with your database credentials.
- If you encounter issues with `uvicorn` command, ensure you are running it inside the activated virtual environment.

---

Following these steps should fix the issues and get the project running smoothly.

If you need further assistance, please let me know.
