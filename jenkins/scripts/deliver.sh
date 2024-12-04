#!/usr/bin/env sh

# Construir la aplicación para producción
echo 'Building the React application for production...'
npm run build

# Servir la aplicación con npx serve
echo 'Starting the application...'
npx serve -s build -l 3000 &
sleep 1
echo $! > .pidfile

echo 'Visit http://localhost:3000 to see your application.'
