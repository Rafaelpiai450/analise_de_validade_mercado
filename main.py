from flask import Flask, jsonify, render_template, request, redirect, url_for
import sqlite3, os
from datetime import datetime, timedelta

app = Flask(__name__)

alerta_dias = 30

def get_produtos():
    conn = sqlite3.connect("mercado.db")
    cursor = conn.cursor()
    cursor.execute("SELECT id, nome, validade FROM produtos")
    produtos = cursor.fetchall()
    conn.close()
    return produtos

def verificar_status(validade):
    hoje = datetime.now().date()
    validade = str(validade)  # garante que seja string
    try:
        validade_date = datetime.strptime(validade, "%d/%m/%Y").date()
    except ValueError:
        validade_date = datetime.strptime(validade, "%Y-%m-%d").date()
    diff = (validade_date - hoje).days
    if diff < 0:
        return "Vencido"
    elif diff <= 30:
        return "Próximo de vencer"
    return "Ok"

@app.route("/")
def index():
    produtos = get_produtos()
    resultado = []
    for id, nome, validade in produtos:
        status = verificar_status(validade)
        resultado.append({"id": id, "nome": nome, "validade": validade, "status": status})
    return render_template("index.html", produtos=resultado)

@app.route("/produtos")
def listar_produtos():
    produtos = get_produtos()
    resultado = []
    for nome, validade in produtos:
        status = verificar_status(validade)
        resultado.append({"nome": nome, "validade": validade, "status": status})
    return jsonify(resultado)

@app.route("/apagar/<int:id>", methods=["POST"])
def apagar(id):
    conn = sqlite3.connect("mercado.db")
    cursor = conn.cursor()
    cursor.execute("DELETE FROM produtos WHERE id=?", (id,))
    conn.commit()
    conn.close()
    return redirect(url_for("index"))

@app.route("/editar/<int:id>", methods=["GET", "POST"])
def editar(id):
    conn = sqlite3.connect("mercado.db")
    cursor = conn.cursor()
    if request.method == "POST":
        nome = request.form["nome"]
        validade = request.form["validade"]
        cursor.execute("UPDATE produtos SET nome=?, validade=? WHERE id=?", (nome, validade, id))
        conn.commit()
        conn.close()
        return redirect(url_for("index"))
    else:
        cursor.execute("SELECT id, nome, validade FROM produtos WHERE id=?", (id,))
        produto = cursor.fetchone()
        conn.close()
        return render_template("editar.html", produto=produto)

@app.route("/adicionar", methods=["GET", "POST"])
def adicionar():
    if request.method == "POST":
        nome = request.form["nome"]
        validade = request.form["validade"]
        conn = sqlite3.connect("mercado.db")
        cursor = conn.cursor()
        cursor.execute("INSERT INTO produtos (nome, validade) VALUES (?, ?)", (nome, validade))
        conn.commit()
        conn.close()
        return redirect(url_for("index"))
    return render_template("adicionar.html")


if __name__ == "__main__":
    app.run(debug=True)
    port=int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)