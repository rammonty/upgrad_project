const mongoose = require('mongoose')

mongoose
    .connect('mongodb://intelli:78DP@103.76.250.178:3117/cinema?authSource=admin', { useNewUrlParser: true })
    .catch(e => {
        console.error('Connection error', e.message)
    })

const db = mongoose.connection

module.exports = db
