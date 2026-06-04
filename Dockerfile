FROM node:22-alpine
WORKDIR /app
RUN echo 'const http=require("http");http.createServer((_,res)=>{res.writeHead(200);res.end("hello from fuzzy-lamp v3\n")}).listen(process.env.PORT||3000)' > server.js
EXPOSE 3000
HEALTHCHECK CMD wget -qO- http://localhost:3000 || exit 1
CMD ["node","server.js"]