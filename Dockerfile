# Usar imagen liviana oficial de Node.js
FROM node:18-alpine

# Definir directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias para producción
RUN npm install --production

# Copiar el resto del código del catálogo
COPY . .

# Exponer el puerto de la aplicación
EXPOSE 3000

# Comando para arrancar el servidor
CMD ["node", "server.js"]