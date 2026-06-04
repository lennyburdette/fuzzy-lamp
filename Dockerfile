FROM node:22-alpine
WORKDIR /app
COPY server.js ./
EXPOSE 3000
HEALTHCHECK CMD wget -qO- http://localhost:3000 || exit 1
CMD ["node", "server.js"]
