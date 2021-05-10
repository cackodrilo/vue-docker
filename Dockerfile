FROM node:lts-alpine
# hacer la carpeta 'app' el directorio de trabajo actual
WORKDIR /app
# copiar 'package.json' y 'package-lock.json' (si están disponibles)
COPY package.json ./
# instalar dependencias del proyecto
RUN npm install
EXPOSE 8080
# copiar los archivos y carpetas del proyecto al directorio de trabajo actual (es decir, la carpeta 'app')
COPY . .
CMD [ "npm", "run","serve"]

#docker-compose up # to start the compilation process.
# to install npm package run.
# docker-compose exec -it web npm i bootstrap.