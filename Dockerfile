# Usa una imagen base de Node.js
FROM node:16

# Crea y establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY backend/package.json backend/package-lock.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos del backend
COPY backend/ .

# Expone el puerto 8080
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
