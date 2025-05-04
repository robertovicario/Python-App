from flask import Flask
from flask_frozen import Freezer
import sys

from routes.index import index_bp

# -------------------------

app = Flask(__name__)
app.register_blueprint(index_bp)

# -------------------------

freezer = Freezer(app)

# -------------------------

if __name__ == '__main__':
    if len(sys.argv) > 1 and sys.argv[1] == 'build':
        freezer.freeze()
    else:
        app.run(debug=True, host='0.0.0.0', port=8000)
