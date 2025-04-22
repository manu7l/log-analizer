#!/bin/bash

LOG_FILE=$1

# Colores
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
RESET='\033[0m'

clear


echo -e "${GREEN}


██       ██████   ██████   █████  ███    ██  █████  ██      ██ ███████ ███████ ██████  
██      ██    ██ ██       ██   ██ ████   ██ ██   ██ ██      ██    ███  ██      ██   ██ 
██      ██    ██ ██   ███ ███████ ██ ██  ██ ███████ ██      ██   ███   █████   ██████  
██      ██    ██ ██    ██ ██   ██ ██  ██ ██ ██   ██ ██      ██  ███    ██      ██   ██ 
███████  ██████   ██████  ██   ██ ██   ████ ██   ██ ███████ ██ ███████ ███████ ██   ██ 


                                                                                       
${RESET}"


if [[ -z "LOG_FILE" || -f "LOG_FILE" ]];then
  echo -e "${RED} ❌Debes proporcionar un archivo de log válido.${RESET}"
  echo -e "Uso: ./logAnalizer.sh /ruta/a/acces.log"
  exit 
fi

#Menú

while true; do 
  echo -e "\n${GREEN} ¿Que quieres analizar?${RESET}\n"
  echo "1) IPs más frecuentes"
  echo "2) URLs más visitadas"
  echo "3) Códigos de estado mas comunes"
  echo "4) Horas con más tráfico"
  echo "5) Salir"

  read -p "Seleccione una opcion: " opt

  case $opt in
    1)
      echo -e "${CYAN}\n>> Top 10 IPs:${RESET}"
      awk '{print} $1' "$LOG_FILE" | sort | uniq -c | sort -rn | head -10
      ;;
    2)
      echo -e "${CYAN}\n>> Top 10 URLs:${RESET}"
      awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -10
      ;;
    3)
      echo -e "${CYAN}\n>> Código de estado HTTP:${RESET}"
      awk 'NF >= 9 { print $9 }' "$LOG_FILE" | sort | uniq -c | sort -rn
      ;;
    4)
      echo -e "${CYAN}\n>> Horas con más tráfico:${RESET}"
      grep -oE '[0-9]{2}/[A-Za-z]+/[0-9]{4}:[0-9]{2}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -10
      ;;
    5)
      echo -e "${YELLOW} 👋 Hasta la próxima!${RESET}"
      exit 0
      ;;
    *)
      echo -e "${RED} Opción inválida.${RESET}"
      ;;

  esac


done



