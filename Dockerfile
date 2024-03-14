# Usa una imagen de Node.js como base
FROM node:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios desde el directorio local al contenedor
COPY . .

# Instala las dependencias de la aplicación
RUN npm install

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 8001

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["npm", "start"]
