// module FS
// const fs = require('fs');
// const data = fs.readFileSync(
//     "E:\my Coding\New Tugas\Folder-BackEnd\00-Arsip-Latihan-BackEnd\03-Express-JS\package-lock.json", { encoding: "utf-8", flag: "r" }
// )
// console.log(data)

// membuat file
const fs = require('fs');
let data = "Coding bootcamp joyfull jasper";

fs.writeFile("joyfull.txt", data, (err) => {
    if (err) {
        console.log("gagal");
    } else {
        console.log("berhasil membuat file");
        console.log(fs.readFileSync("joyfull.txt", { encoding: "utf8" }));
    }
});

