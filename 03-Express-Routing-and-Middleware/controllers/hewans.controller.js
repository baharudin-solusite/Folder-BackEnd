const hewan = [
    { id: 1, nama: 'Snowy', spesies: 'kucing' },
    { id: 2, nama: 'Blacki', spesies: 'anjing' },
    { id: 3, nama: 'Molly', spesies: 'kucing' },
    { id: 4, nama: 'Milo', spesies: 'kelinci' },
    { id: 5, nama: 'Rere', spesies: 'kucing' },
];


module.exports = {
    getAllHewan: (req, res) => {
        res.json(hewan)
    },

    getHewanByID: (req, res) => {
        const id = req.params.id
        const jenis = hewan.find((item) => item.id == id)
        res.json(jenis)
    },

    addHewan: (req, res) => {
        const jenis = req.body
        hewan.push(jenis)
        res.json("berhasil menambahkan jenis")
    },
}





// PUT '/hewan/:id'

// DELETE '/hewan/:id'