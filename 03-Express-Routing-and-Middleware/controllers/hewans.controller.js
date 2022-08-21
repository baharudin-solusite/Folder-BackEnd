const hewan = [
    { id: 1, nama: 'Snowy', spesies: 'kucing' },
    { id: 2, nama: 'Blacki', spesies: 'anjing' },
    { id: 3, nama: 'Molly', spesies: 'kucing' },
    { id: 4, nama: 'Milo', spesies: 'kelinci' },
    { id: 5, nama: 'Rere', spesies: 'kucing' },
];


module.exports = {
    getAllHewan: (req, res) => {
        res.json({
            message: "success get data Pet",
            data: hewan,
        })
    },

    getHewanByID: (req, res) => {
        const id = req.params.id
        const jenis = hewan.find((item) => item.id == id)
        res.json({
            message: "success get data Pet",
            data: jenis,
        })
    },

    addHewan: (req, res) => {
        const jenis = req.body
        hewan.push(jenis)
        res.json({
            message: "success adding one pets",
            data: jenis,
        })
    },
    updateHewan: (req, res) => {
        const hewanID = req.params.id
        const body = req.body
        const index = hewan.findIndex(item => item.id === Number(hewanID))

        if (index !== -1) {
            hewan[index].nama = body.nama || hewan[index].nama
            hewan[index].spesies = body.spesies || hewan[index].spesies

            res.status(200).send({
                message: "success update data pet"
            })
        } else {
            res.status(404).send({ message: "data not found" })
        }

    },

    deleteHewan: (req, res) => {
        const index = hewan.findIndex(item => item.id === Number(req.params.id))

        if (index !== -1) {
            hewan.splice(index, 1)

            res.status(200).json({
                message: "success delete data pet",
                hewan: hewan
            })
        } else {
            res.status(404).send({ message: "data not found" })
        }
    }
}




