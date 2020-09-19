const express = require('express')
const app = express()

const host = '0.0.0.0'
const port = 3000

app.get('/', (req, res) => res.send('Hello World!'))
app.listen(3000, host, () => {
    console.log(`Express.js server running at http://${host}:${port}/`)
})