const express = require('express');
const router = express.Router()

const hewansRouter = require('./hewans.router');

router.get("/", (req, res) => {
    res.json("Express App")
})

router.use("/hewans", hewansRouter)

module.exports = router