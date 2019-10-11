import express from 'express'
import uuid from 'uuid'

const app = express()
const id = uuid.v4()
const port = 3002

app.get('/', (req, res) => {
  res.send(id)
})

app.listen(port, () => {
  console.log(`Example server listening on port: ${port}`);
})
