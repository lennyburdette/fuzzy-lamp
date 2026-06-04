FROM node:22-alpine
WORKDIR /app
RUN echo 'const http=require("http");http.createServer((_,res)=>{res.end("hello from fuzzy-lamp\n")}).listen(3000)' > server.js
EXPOSE 3000
CMD ["node","server.js"]
