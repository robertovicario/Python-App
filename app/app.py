from flask import Flask

from routes.index import index_bp

# -------------------------

app = Flask(__name__)

# -------------------------

app.register_blueprint(index_bp)

# -------------------------

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8000)
