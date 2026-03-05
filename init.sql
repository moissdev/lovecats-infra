-- Tabla Historial
-- Guarda registros de las curiosidades consultadas para usarse como un historial
-- Pd: source_url existe para registrar el proveedor, es útil si la app se escala a consumir 
-- APIs de más de un proveedor

CREATE TABLE IF NOT EXISTS cat_facts_history (
    id SERIAL PRIMARY KEY,
    fact_text TEXT NOT NULL,
    source_url VARCHAR(255) DEFAULT 'https://catfact.ninja/fact',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);