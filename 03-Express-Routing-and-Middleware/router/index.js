const express = require('express');
const router = express.Router()

const moviesRouter = require('./hewans.router');

router.get("/", (req, res) => {
    res.json("Express App")
})

router.use("/hewans", moviesRouter)
// router.use("/user", userRouter)
// router.use("/category", categoryRouter)

module.exports = router