# How to Start the Server

## Quick Start (Easiest Method)

### Windows:
1. **Double-click** `start.bat` file
   - This will automatically:
     - Activate the virtual environment
     - Install dependencies (if needed)
     - Start the server

### Or Manually:

1. **Open Command Prompt or Git Bash** in the project folder

2. **Activate Virtual Environment:**
   ```bash
   # Windows (Command Prompt)
   venv\Scripts\activate
   
   # Windows (Git Bash)
   source venv/Scripts/activate
   ```

3. **Install Dependencies (first time only):**
   ```bash
   pip install -r requirements.txt
   ```

4. **Start the Server:**
   ```bash
   python app.py
   ```

5. **Open Your Browser:**
   - Go to: `http://localhost:5000` or `http://127.0.0.1:5000`
   - You should see the Car Wash POS interface

## Verify Server is Running

Once started, you should see:
```
Starting server on http://0.0.0.0:5000
Access the POS at http://0.0.0.0:5000/ or http://0.0.0.0:5000/pos
```

## Test Routes

- **Main POS**: http://localhost:5000/
- **POS (alternate)**: http://localhost:5000/pos
- **Dashboard**: http://localhost:5000/dashboard
- **Test Route**: http://localhost:5000/test (should show {"status": "ok"})
- **API Services**: http://localhost:5000/api/services

## Troubleshooting

### "Not Found" Error:
1. **Make sure the server is actually running** - check the terminal for "Starting server" message
2. **Check the URL** - use `http://localhost:5000` (not just `localhost:5000`)
3. **Test the test route first**: http://localhost:5000/test
4. **Check if port 5000 is already in use** - try changing port:
   ```bash
   set FLASK_PORT=8000
   python app.py
   ```
   Then access: http://localhost:8000

### "Module not found" Error:
- Activate the virtual environment first
- Install dependencies: `pip install -r requirements.txt`

### Port Already in Use:
- Close other applications using port 5000
- Or change the port (see above)

## Stopping the Server

Press `Ctrl+C` in the terminal where the server is running.

