
# 🔍 LogAnalizer - Analiza logs como un pro desde tu terminal 🚀

![bash](https://img.shields.io/badge/Bash-5.x-brightgreen?logo=gnubash&logoColor=white)
![status](https://img.shields.io/badge/Status-En%20Desarrollo-blueviolet)
![platform](https://img.shields.io/badge/Compatible-Linux%20%7C%20MacOS-lightgrey)

---

## 📂 ¿Qué es LogAnalizer?

**LogAnalizer** es una herramienta de análisis de logs escrita en puro **Bash** 🐚. Te permite visualizar patrones clave en archivos `access.log` como:

- 🔢 IPs más repetidas  
- 🌐 Rutas más accedidas  
- 📊 Códigos de estado HTTP más comunes  
- ⏰ Horas con mayor tráfico
- 🧠 Análisis interactivo desde terminal  
- 🎨 ¡Con banners y colores para que no te duermas!

Ideal para análisis rápidos, proyectos personales o scripts de monitoreo ligero.

---

## 🖼️ Vista previa

```bash


██       ██████   ██████   █████  ███    ██  █████  ██      ██ ███████ ███████ ██████  
██      ██    ██ ██       ██   ██ ████   ██ ██   ██ ██      ██    ███  ██      ██   ██ 
██      ██    ██ ██   ███ ███████ ██ ██  ██ ███████ ██      ██   ███   █████   ██████  
██      ██    ██ ██    ██ ██   ██ ██  ██ ██ ██   ██ ██      ██  ███    ██      ██   ██ 
███████  ██████   ██████  ██   ██ ██   ████ ██   ██ ███████ ██ ███████ ███████ ██   ██ 


[1] Ver IPs más repetidas
[2] Ver URLs más accedidas
[3] Ver códigos de estado HTTP
[4] Ver horas con más tráfico
[5] Salir
```

---

## ⚙️ Instalación

```bash
git clone https://github.com/tu-usuario/LogAnalizer.git
cd LogAnalizer
chmod +x logalyzer.sh
```

---

## ▶️ Uso

Ejecutá el script pasando el archivo `.log` como argumento:

```bash
./logalyzer.sh access.log
```

> Si no pasás ningún archivo, el script te pedirá que lo ingreses.

---

## 📌 Requisitos

- Bash 4 o superior
- `awk`, `sort`, `uniq`, `grep` (ya incluidos en Linux/macOS)

---

## 📁 Archivo de prueba

Incluye un archivo de ejemplo `access.log` con 20 líneas para que puedas probarlo al instante 🧪

---

## 🛠️ Opciones del menú

| Opción | Descripción |
|--------|-------------|
| 1️⃣     | IPs más frecuentes |
| 2️⃣     | Rutas accedidas más comunes |
| 3️⃣     | Códigos HTTP más usados |
| 4️⃣     | Horas con más tráfico |
| 5️⃣     | Salir del script |

---

## 🌟 ¿Por qué usar LogAnalizer?

- 📦 Cero dependencias externas
- ⚡ Súper rápido y liviano
- 💅 Estilo visual cuidado
- 🧪 Ideal para practicar Bash o hacer proyectos llamativos para tu portfolio

---

## 👨‍💻 Autor

**Manu7l**  
[LinkedIn](https://www.linkedin.com/in/manueljos%C3%A9mart%C3%ADn%C3%A1lvarez/) • [Github](https://github.com/manu7l) 

---

## 📄 Licencia

MIT License © 2025

---

> ¿Te gustó? ⭐ ¡Dale una estrella al repo para apoyarlo!
