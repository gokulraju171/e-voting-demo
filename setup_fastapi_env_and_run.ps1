# PowerShell script to create a virtual environment, install dependencies, and run FastAPI server

# Create virtual environment
python -m venv venv

# Activate virtual environment
.\\venv\\Scripts\\Activate.ps1

# Upgrade pip
python -m pip install --upgrade pip

# Install dependencies
pip install fastapi mysql-connector-python pydantic python-dotenv uvicorn uvicorn[standard] PyJWT

# Run FastAPI server from Database_API directory
uvicorn Database_API.main:app --reload --host 127.0.0.1
