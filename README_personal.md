# 🧠 JuJe — Perfil Técnico y Filosofía de Trabajo

## 🤖 Para la IA — Instrucciones sobre JuJe

Este bloque está pensado para que asistentes automatizados (Agentes/IA) comprendan rápidamente quién es JuJe
y cómo deben interactuar con él. Incluir reglas, preferencias y un pequeño "contrato" ayuda a evitar malentendidos.

- Nombre / alias: `JuJe`.
- Idioma preferido para interacciones: Español (claro y conciso). Si se solicita, también puede comunicarse en inglés.
- Zona horaria (asunción): UTC-3 (Argentina). Si esto es incorrecto, preguntar antes de programar tareas con horario.
- Entorno y shell: Linux (Ubuntu), shell por defecto `bash`.
- Editor preferido: VS Code (convenciones tipadas y docstrings en Python).
- Lenguajes y herramientas preferidas: Python (3.11+), Bash, PostgreSQL 16, `psycopg`, `pandas`, FastAPI/Flask.
- Formato de respuesta preferido para cambios en el repositorio: 1) resumen breve, 2) archivos modificados, 3) pruebas realizadas/resultado.

Contrato corto (inputs / outputs / errores):
- Input: petición del usuario con contexto del repo o problema reproducible.
- Output esperado: cambios de código, parches o instrucciones reproducibles + tests mínimos cuando aplique.
- Errores: describir causa probable, pasos para reproducir y, si es posible, un patch alternativo o rollback.

Reglas de privacidad y seguridad:
- Nunca exfiltrar secretos. Si aparecen credenciales en archivos, notificar y ofrecer cómo rotarlas, sin imprimirlas.
- No almacenar información personal fuera del repositorio sin consentimiento explícito.

Preferencias de estilo y calidad:
- Priorizar claridad, legibilidad y pruebas pequeñas (happy path + 1 edge case).
- Usar tipado en Python cuando sea práctico (anotaciones simples). Preferir docstrings y comentarios concisos.
- Antes de cambiar infra, preguntar si hay restricciones de despliegue (costos, permisos, DNS, IPs fijas).

Ejemplos de tareas que JuJe espera que la IA realice bien:
- Escribir o limpiar scripts ETL en Python para PostgreSQL.
- Proponer mejoras en pipelines (staging → fact_raw → fact_clean).
- Crear tests unitarios/integration mínimos para funciones nuevas.
- Preparar parches para nginx / certificados con pasos reproducibles.

Pedir aclaraciones cuando:
- Falta información mínima para ejecutar una tarea (credenciales, variables de entorno, ruta de archivos).
- Una acción puede tener impacto en producción o costos.

Pequeñas asunciones razonables (si no se indica lo contrario):
- Si no se especifica zona horaria, asumir UTC-3. Preguntar si se requiere otra.
- Si no se indica versión de Python, preferir Python 3.11.

---

## 🌍 Descripción general
JuJe es un profesional interdisciplinario que fusiona **contabilidad, ingeniería de datos y desarrollo de software**.  
Combina pensamiento lógico, estructura analítica y sentido estético en la creación de sistemas automatizados y visualizaciones inteligentes.  
Su proyecto insignia, **Euler-Services**, transforma datos del mercado eléctrico argentino (CAMMESA) en inteligencia empresarial de alta calidad.

---

## ⚙️ Stack técnico principal

### 🗄️ Bases de datos
- **PostgreSQL 16**: diseño y administración de esquemas, roles, permisos, `default privileges`, y backups (`pg_dump`, `pg_restore`).
- Uso avanzado de SQL: `JOIN`, `CTE`, `window functions`, `generate_series`, `ON CONFLICT`, vistas materializadas y triggers.
- Arquitectura modular de datos: `staging`, `fact_raw`, `fact_clean`, `dim_primary`, `dim_foreign`.

### 🐍 Python
- ETL y automatización con `pandas`, `psycopg[binary]`, `bokeh`, `requests`, `pathlib`, `zipfile`.
- Scripts estructurados con `def main()` y `if __name__ == "__main__":`.
- Carga incremental a PostgreSQL, procesamiento vectorizado y logging en tablas ETL.
- Integración con **Microsoft Graph API** vía OAuth 2.0 para envío automático de reportes HTML.
- Manejo de secretos con **Google Secret Manager** y despliegue en **Cloud Run / Cloud Functions**.

### 📊 Business Intelligence
- **Power BI Service**: dashboards de generación, eficiencia y consumo.
- Conexión directa a PostgreSQL y actualización automática.
- Reportes HTML personalizados con CSS y envío periódico por correo electrónico.

---

## 🧩 Arquitectura y DevOps

### 🧱 Infraestructura
- Ecosistema de **máquinas virtuales Ubuntu**.
- Gestión de red: NAT, bridges, `ufw`, `iptables`, `virbr0`.
- **Nginx reverse proxy** con HTTPS (Certbot + Let’s Encrypt).
- Distinción entre IP pública (DNS) e IP privada fija (LAN).

### ☁️ Cloud
- **Google Cloud Platform**: base de datos PostgreSQL, Secret Manager y funciones serverless.
- Organización por proyectos con buenas prácticas de seguridad y permisos.

---

## 💻 Backend / Frontend

### 🧠 APIs y frameworks
- Enfoque progresivo: **Flask → FastAPI → Django**.
- Claridad entre scripts programados y endpoints RESTful.
- Arquitectura de microservicios orientada a datos.

### ⚙️ Node + Vue Stack
- Backend en **Node/Express** con endpoints `/api/valores`, `/api/filters`.
- Frontend en **Vue 3 (Composition API)** con **Vite** y **Tailwind CSS**.
- Dashboards interactivos con **Chart.js + Luxon** y filtros dinámicos.

---

## 🧮 Ciencia de datos y análisis
- Modelos estadísticos: **ARIMA**, **SARIMA**, **Prophet**, **Random Forest**.
- Simulaciones Monte Carlo (valor presente bajo incertidumbre).
- Cálculo de riesgo y optimización de portafolios con programación cuadrática.
- Exploración de **scikit-learn**, **statsmodels**, **Spark**, **TensorFlow** y **PyTorch**.

---

## 🔬 Entorno Linux y redes
- Sistema base: **Ubuntu 24.04.3 LTS**.
- Dominio de `systemctl`, `journalctl`, `ssh`, `scp`, `nmap`, `netstat`.
- Comprensión de TCP / IP, *three-way handshake*, control de flujo y congestión.
- Scripts Bash automatizados para extracción y actualización de datos.

---

## 🧑‍🏫 Estilo de aprendizaje
- Enfoca cada tema desde sus fundamentos (“101”) hasta el nivel de producción.
- Prefiere explicaciones lineales, razonadas y documentadas.
- Documentación limpia, modular y con sentido visual y narrativo.
- Mentalidad de **pipeline**: cada proceso debe ser trazable, medible y reproducible.

---

## 🧭 Próximos pasos
- Consolidar **Euler-Services** como SaaS de análisis energético.
- Escalar backend en Flask / FastAPI con APIs RESTful seguras.
- Integrar autenticación corporativa (Azure AD / OAuth 2).
- Desplegar paneles de usuario por niveles (freemium / pro / enterprise).
- Publicar documentación legal (Terms & Privacy) y optimizar branding.
- Profundizar en administración de servidores, Azure AD y DevOps Pipelines.
- Formación continua en MITx Data Science, Azure Data Scientist, y Red Team fundamentals.

---

## 🧩 Filosofía técnica
> “No programar para que funcione, sino para **entender por qué funciona**.”

JuJe prioriza la comprensión profunda, la estética del código y la integridad del dato.  
Une ingeniería, ética y diseño en cada proyecto: precisión, transparencia y propósito.  
Su visión combina la robustez de la arquitectura de datos con la sensibilidad del análisis humano.

---

## 📎 Uso para GitHub Copilot
Este archivo describe el **estilo, dominio y filosofía de desarrollo** de JuJe.  
Las sugerencias generadas por Copilot deben:
- Priorizar claridad y legibilidad.  
- Usar Python 3.11 y PostgreSQL 16 como entorno base.  
- Mantener consistencia con los patrones `staging → fact_raw → fact_clean`.  
- Preferir `psycopg` y `pandas` vectorizado antes que SQLAlchemy.  
- Emplear logging y tipado explícito (`def func(param: Type) -> ReturnType`).  
- Mantener estándares de documentación con docstrings y comentarios explicativos.

---
