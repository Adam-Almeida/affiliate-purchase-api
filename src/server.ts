import express, { Request, Response } from 'express'

const port = process.env.PORT || 3333
const app = express()

app.get('/ping', (req: Request, res: Response) => {
  res.json({ pong: true })
})

app.listen(port, () => console.log(`Server is running on port ${port}`))
