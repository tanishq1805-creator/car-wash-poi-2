# Car Wash POS System

A full-stack Point of Sale (POS) system for car wash businesses, built with Flask (backend) and vanilla JavaScript (frontend).

## Features

- **Service Management**: Add, edit, and manage car wash services
- **Customer Management**: Track customers and their vehicles
- **Sales Processing**: Process sales with automatic invoice generation
- **Appointment Booking**: Create appointments linked to sales
- **Offline Support**: Works offline with local storage, syncs when backend is available
- **Real-time Sync**: Frontend automatically syncs with backend API

## Setup Instructions

### 1. Install Dependencies

Make sure you have Python 3.7+ installed, then install the required packages:

```bash
# On Windows
pip install -r requirements.txt

# Or if using virtual environment (recommended)
python -m venv venv
venv\Scripts\activate  # On Windows
# source venv/bin/activate  # On Linux/Mac
pip install -r requirements.txt
```

### 2. Run the Application

**Option 1: Using the run script**
```bash
python run.py
```

**Option 2: Using app.py directly**
```bash
python app.py
```

**Option 3: Using Flask CLI**
```bash
flask run --host=0.0.0.0 --port=5000
```

### 3. Access the Application

Once the server is running, open your browser and navigate to:

- **Main POS Interface**: http://localhost:5000/ or http://localhost:5000/pos
- **API Endpoints**: http://localhost:5000/api/services, http://localhost:5000/api/customers, etc.

## Hosting Options

### Local Network Access

To allow other devices on your network to access the application:

1. Find your local IP address:
   - Windows: `ipconfig` (look for IPv4 Address)
   - Linux/Mac: `ifconfig` or `ip addr`

2. Run the server with:
   ```bash
   python app.py
   ```
   Or set environment variables:
   ```bash
   set FLASK_HOST=0.0.0.0
   set FLASK_PORT=5000
   python app.py
   ```

3. Access from other devices using: `http://YOUR_IP_ADDRESS:5000`

### Production Hosting

For production deployment, consider using:

1. **Gunicorn** (Linux/Mac):
   ```bash
   pip install gunicorn
   gunicorn -w 4 -b 0.0.0.0:5000 app:app
   ```

2. **Waitress** (Windows):
   ```bash
   pip install waitress
   waitress-serve --host=0.0.0.0 --port=5000 app:app
   ```

3. **Cloud Platforms**:
   - **Heroku**: Use `Procfile` with `web: gunicorn app:app`
   - **PythonAnywhere**: Upload files and configure WSGI
   - **Railway/Render**: Connect your Git repository

## Project Structure

```
.
├── app.py              # Flask backend application
├── run.py              # Simple startup script
├── requirements.txt    # Python dependencies
├── static/
│   └── index.html     # Frontend POS interface
└── instance/
    └── carwash.db     # SQLite database (created automatically)
```

## API Endpoints

- `GET /api/services` - List all services
- `POST /api/services` - Create a new service
- `GET /api/customers` - List all customers
- `POST /api/customers` - Create a new customer
- `GET /api/vehicles` - List all vehicles
- `POST /api/vehicles` - Create a new vehicle
- `POST /api/sales` - Create a new sale
- `GET /api/sales` - List all sales
- `GET /api/sales/<id>` - Get sale details

## Database

The application uses SQLite database stored in the `instance/` folder. The database is automatically created and initialized with default services on first run.

## Troubleshooting

1. **Port already in use**: Change the port in `app.py` or set `FLASK_PORT` environment variable
2. **Database errors**: Delete `instance/carwash.db` to reset the database
3. **CORS errors**: Already configured in the app, but ensure Flask-CORS is installed
4. **Frontend not loading**: Check that `static/index.html` exists and Flask static folder is configured correctly

## Development

To run in debug mode:
```bash
set FLASK_DEBUG=True
python app.py
```

## License

This project is for educational purposes.

