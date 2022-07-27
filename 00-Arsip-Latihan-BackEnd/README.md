# BackEnd

## **Intro & Essential Node.js**
note Js adalah suatu tempat untuk mengesekusi sebuah code JavaScript di luar sebuah browser yang dibuat Ryan Dahl pada tahun 2009 yang sekarang masih populer sampai sekarang 

### **1. Apa itu node js?**
Node.js adalah runtime environment untuk JavaScript yang bersifat open-source dan cross-platform. Dengan Node.js kita dapat menjalankan kode JavaScript di mana pun, tidak hanya terbatas pada lingkungan browser.

Node.js menjalankan V8 JavaScript engine (yang juga merupakan inti dari Google Chrome) di luar browser. Ini memungkinkan Node.js memiliki performa yang tinggi.
### **2. Note.js Architecture**
JavaScript menggunakan konsep **Single Theread** memiliki satu tumpukan panggilan yang dapat mengoperasikan program secara bersama
![](https://www.appinessworld.com/images/server-side-development-with-nodejs-inner-3.png)

1. Aplikasi
2. V8 (JavaScript Enggine)
3. Event Queue (Antrian)
4. Event Loop (memeriksa data)
5. Blocking Operastion (esekusi operasi)
6. Worker Threads(menjalankan perintah)
7. Execute Callback (mengebalikan Perintah)











## Web Server & RESTful API

### Apa itu web server
adalah sebuah perangkat lunak yang berfungsi untuk memberikan layanan berupa data, dan berfungsi menerima permintaan HTTP atau HTTPS dari klien yang menggunakan browser (chrome, firefox, dll)

#### Web Server sendiri ini terdiri dari 
- Hardwere
- Software

#### Static Web Server VS Dynamic Web Server
- Statis 
- Dinamis
