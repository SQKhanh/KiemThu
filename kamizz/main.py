import os
import json
import uuid 
from flask import Flask, request, jsonify, render_template, send_from_directory
lisapiruing ={}
 
app = Flask(__name__, static_folder="public")



UPLOAD_FOLDER = 'public/uploads'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

if not os.path.exists(UPLOAD_FOLDER):
    os.makedirs(UPLOAD_FOLDER)

@app.route('/<path:filename>')
def serve_static(filename):
    data = send_from_directory(app.static_folder, filename)
    if filename.endswith(('.jpg', '.jpeg', '.png', '.gif', '.css', '.js')):
        data.headers['Cache-Control'] = 'no-cache, no-store, must-revalidate'
        data.headers['Pragma'] = 'no-cache'
        data.headers['Expires'] = '0'
    return data 
   
if __name__ == '__main__':
    app.run(host="0.0.0.0",debug=True, port=7070)
