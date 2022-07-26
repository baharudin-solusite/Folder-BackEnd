// Tugas 2
const http = require("http");

const servers = http.createServer((req, res) => {

    res.writeHead(200, { "content-type": "text/html" });
    const route = req.url
    if (route === "/about") {
        res.write("Welcome to about us page");
    } else if (route === "/contact") {
        res.write("Welcome to contact us page");
    } else {
        res.write("Hello World!");
    }
    res.end();
});

servers.on("listening", () => {
    console.log("Server created at port 8000");
});

servers.listen(8000);