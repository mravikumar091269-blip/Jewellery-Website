from flask import Flask, jsonify, render_template, send_from_directory
import mysql.connector

app = Flask(__name__)

# ---------------- DATABASE ----------------
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="YOUR DB PASSWORD",
    database="jewellery_db"
)

# ---------------- HOME PAGE ----------------
@app.route("/")
def home():
    return render_template("home2.html")


# ---------------- CATEGORY PAGES ----------------
@app.route("/calculator")
def calculator():
    return render_template("Front.html")

@app.route("/gold")
def gold():
    return render_template("category.html")


@app.route("/silver")
def silver():
    return send_from_directory("silver", "silcats.html")


@app.route("/diamond")
def diamond():
    return render_template("diamond-jewellery.html")


# ---------------- GOLD SUB-PAGES ----------------
@app.route("/gold/necklaces")
def necklaces():
    return render_template("goldnecks.html")

@app.route("/gold/rings")
def rings():
    return render_template("goldrings.html")


@app.route("/gold/bangles")
def bangles():
    return render_template("goldbangs.html")


@app.route("/gold/earrings")
def earrings():
    return render_template("goldears.html")


@app.route("/gold/anklets")
def anklets():
    return render_template("goldanklets.html")

# ---------------- SILVER SUB-PAGES ----------------
@app.route("/silver/necklaces")
def silver_necklaces():
    return send_from_directory("silver", "silnecks.html")

@app.route("/silver/rings")
def silver_rings():
    return send_from_directory("silver", "silrings.html")

@app.route("/silver/bangles")
def silver_bangles():
    return send_from_directory("silver", "silbangs.html")

@app.route("/silver/earrings")
def silver_earrings():
    return send_from_directory("silver", "silears.html")

@app.route("/silver/anklets")
def silver_anklets():
    return send_from_directory("silver", "silanklets.html")

# ----------------GOLD DATABASE API ----------------
@app.route('/design/<name>')
def get_design(name):
    cursor = db.cursor(dictionary=True)
    cursor.execute(
        "SELECT * FROM jewellery_items WHERE design_name=%s",
        (name,)
    )
    item = cursor.fetchone()
    return jsonify(item)

@app.route('/ring-design/<name>')
def get_ring_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM gold_ring WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/bangle-design/<name>')
def get_bangle_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM gold_bangles WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/earring-design/<name>')
def get_earring_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM gold_earring WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/anklet-design/<name>')
def get_anklet_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM gold_anklet WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

# ----------------SILVER DATABASE API ----------------
@app.route('/silver_necklace/<name>')
def get_silver_necklace_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM silver_necklace WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/silver_ring/<name>')
def get_silver_ring_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM silver_ring WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/silver_bangle/<name>')
def get_silver_bangle_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM silver_bangle WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/silver_earring/<name>')
def get_silver_earring_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM silver_earring WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

@app.route('/silver_anklet/<name>')
def get_silver_anklet_design(name):

    cursor = db.cursor(dictionary=True)

    cursor.execute(
        "SELECT * FROM silver_anklet WHERE design_name=%s",
        (name,)
    )

    item = cursor.fetchone()

    return jsonify(item)

# ----------------HOME NAVIGATION BAR API'S ----------------
@app.route('/api/necklaces')
def api_necklaces():

    cursor = db.cursor(dictionary=True)

    products = []

    cursor.execute("""
        SELECT *,
        'Gold' AS metal_type
        FROM jewellery_items
    """)
    products.extend(cursor.fetchall())

    cursor.execute("""
        SELECT *,
        'Silver' AS metal_type
        FROM silver_necklace
    """)
    products.extend(cursor.fetchall())

    return jsonify(products)

@app.route('/api/rings')
def api_rings():

    cursor = db.cursor(dictionary=True)

    products = []

    cursor.execute("""
        SELECT *,
        'Gold' AS metal_type
        FROM gold_ring
    """)
    products.extend(cursor.fetchall())

    cursor.execute("""
        SELECT *,
        'Silver' AS metal_type
        FROM silver_ring
    """)
    products.extend(cursor.fetchall())

    return jsonify(products)

@app.route('/api/bangles')
def api_bangles():

    cursor = db.cursor(dictionary=True)

    products = []

    cursor.execute("""
        SELECT *,
        'Gold' AS metal_type
        FROM gold_bangles
    """)
    products.extend(cursor.fetchall())

    cursor.execute("""
        SELECT *,
        'Silver' AS metal_type
        FROM silver_bangle
    """)
    products.extend(cursor.fetchall())

    return jsonify(products)

@app.route('/api/earrings')
def api_earrings():

    cursor = db.cursor(dictionary=True)

    products = []

    cursor.execute("""
        SELECT *,
        'Gold' AS metal_type
        FROM gold_earring
    """)
    products.extend(cursor.fetchall())

    cursor.execute("""
        SELECT *,
        'Silver' AS metal_type
        FROM silver_earring
    """)
    products.extend(cursor.fetchall())

    return jsonify(products)

@app.route('/api/anklets')
def api_anklets():

    cursor = db.cursor(dictionary=True)

    products = []

    cursor.execute("""
        SELECT *,
        'Gold' AS metal_type
        FROM gold_anklet
    """)
    products.extend(cursor.fetchall())

    cursor.execute("""
        SELECT *,
        'Silver' AS metal_type
        FROM silver_anklet
    """)
    products.extend(cursor.fetchall())

    return jsonify(products)


# ---------------- IMAGE SERVERS (NO STATIC FOLDER) ----------------
@app.route('/images/<path:filename>')
def serve_images(filename):
    return send_from_directory('images', filename)


@app.route('/goldneck/<path:filename>')
def serve_goldneck_images(filename):
    return send_from_directory('goldneck', filename)

@app.route('/goldring/<path:filename>')
def serve_goldring_images(filename):
    return send_from_directory('goldring', filename)

@app.route('/goldbang/<path:filename>')
def serve_goldbang_images(filename):
    return send_from_directory('goldbang', filename)

@app.route('/goldear/<path:filename>')
def serve_goldear_images(filename):
    return send_from_directory('goldear', filename)

@app.route('/goldanklet/<path:filename>')
def serve_goldanklet_images(filename):
    return send_from_directory('goldanklet', filename)

# ---------------- IMAGE SERVERS FOR SILVER (NO STATIC FOLDER) ----------------
@app.route('/silverimg/<path:filename>')
def serve_silver_images(filename):
    return send_from_directory('silverimg', filename)

# ---------------- RUN APP ----------------
if __name__ == "__main__":
    app.run(debug=True)