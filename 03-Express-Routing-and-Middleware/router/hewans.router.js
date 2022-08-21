const express = require('express');
const router = express.Router()

const { getAllHewan, getHewanByID, addHewan, deleteHewan, updateHewan } = require('../controllers/hewans.controller');

// app diganti router
// /movies nya dihapus

router.get("/", getAllHewan)

router.get("/:id", getHewanByID)

const khususPOST = (req, res, next) => {
    console.log("khusus POST")
    next()
}

router.post("/", khususPOST, addHewan)

router.put("/:id", updateHewan)

router.delete("/:id", deleteHewan)

// PUT /movies/:id - update by ID

// DELETE /movies/:id - delete by ID

module.exports = router