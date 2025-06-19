# 📊 Financial Analysis Database

This project involves building and querying a relational SQL database containing key financial data for multiple companies. The database includes information on stock prices, annual revenues, and expenses. The objective is to perform financial trend and profitability analysis through SQL queries.

---

## 🗂️ Project Structure

The database is composed of the following main tables:

- **empresas**: Contains information about companies and their sectors.  
- **precios_acciones**: Stores monthly stock prices for each company over a 2-year period.  
- **ingresos**: Annual revenues per company.  
- **gastos**: Annual expenses per company.  

---

## 🛠️ Technologies Used

- SQL (MySQL syntax)  
- Relational Database Design  
- Data Normalization  
- Financial Metrics Calculation  

---

## 🧱 Database Schema

```sql
CREATE TABLE empresas (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    sector VARCHAR(50)
);

CREATE TABLE precios_acciones (
    empresa_id INT,
    fecha DATE,
    precio DECIMAL(10, 2),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE ingresos (
    empresa_id INT,
    año INT,
    ingresos DECIMAL(15, 2),
    PRIMARY KEY (empresa_id, año),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE gastos (
    empresa_id INT,
    año INT,
    gastos DECIMAL(15, 2),
    PRIMARY KEY (empresa_id, año),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);
```

---

## 🧪 Example Analyses and Queries

### 1. 📈 Stock Price Trends

```sql
SELECT empresa_id, YEAR(fecha) AS año, AVG(precio) AS avg_precio_anual
FROM precios_acciones
GROUP BY empresa_id, YEAR(fecha)
ORDER BY empresa_id, año;
```

This query calculates the average annual stock price per company to evaluate market performance over time.

---

### 2. 💰 Profit Margin Analysis

```sql
SELECT i.empresa_id, i.año,
       i.ingresos,
       g.gastos,
       (i.ingresos - g.gastos) AS ganancia_neta,
       ROUND((i.ingresos - g.gastos) / i.ingresos * 100, 2) AS margen_utilidad
FROM ingresos i
JOIN gastos g ON i.empresa_id = g.empresa_id AND i.año = g.año
ORDER BY i.empresa_id, i.año;
```

This query calculates net profit and profit margin for each company by year.

---

### 3. 🏆 Top Performing Companies by Profit

```sql
SELECT e.nombre, i.año, (i.ingresos - g.gastos) AS ganancia_neta
FROM ingresos i
JOIN gastos g ON i.empresa_id = g.empresa_id AND i.año = g.año
JOIN empresas e ON e.id = i.empresa_id
ORDER BY ganancia_neta DESC
LIMIT 5;
```

Shows the top 5 company-year combinations by net profit.

---

## 📌 Key Insights

- Designed a normalized relational schema with foreign keys.  
- Analyzed stock trends using time-based SQL aggregations.  
- Calculated profitability using financial indicators like net profit and margin.  
- Identified top-performing companies using custom metrics.  

---

## 📂 Dataset Summary

- Data includes monthly stock prices from 2022 to 2023 for six companies across various sectors (e.g., Technology, Finance, Health).  
- Revenues and expenses are annual, used for year-over-year financial analysis.
- Database used for automate trend visualizations using Power BI (see companies-report-powerbi).

---

## 🚀 Future Enhancements

- Integrate quarterly earnings reports.  
- Extend with market index comparisons.  

---

## 👤 Author

**Julia Becaria Coquet** – Data Analyst | SQL & Business Intelligence Enthusiast  
Project: Personal portfolio – SQL case study for financial data modeling and analysis.
