import sqlite3

conn = sqlite3.connect("mercado.db")
cursor = conn.cursor()


cursor.execute("""
CREATE TABLE IF NOT EXISTS produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    quantidade INTEGER NOT NULL DEFAULT 0,
    validade DATE NOT NULL
)
""")


produtos = [
    
]

cursor.executemany("INSERT INTO produtos (id, nome, quantidade, validade) VALUES (?, ?, ?, ?)", produtos)

conn.commit()
conn.close()

print("Tabela criada e produtos inseridos com sucesso!")
