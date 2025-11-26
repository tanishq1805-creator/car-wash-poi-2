#!/usr/bin/env python
"""
Simple script to run the Car Wash POS application
"""
from app import app, init_db

if __name__ == '__main__':
    # Initialize database
    with app.app_context():
        init_db()
    
    # Run the application
    # Access at http://localhost:5000 or http://0.0.0.0:5000
    app.run(host='0.0.0.0', port=5000, debug=True)

