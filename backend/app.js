const config = require('./utils/config')
const express = require('express')
require('express-async-errors')
const app = express()
const cors = require('cors')
const blankRouter = require('./controllers/blanks')
const middleware = require('./utils/middleware')
const logger = require('./utils/logger')



app.use(cors())
app.use(express.static('build'))
app.use(express.json())
app.use(middleware.requestLogger)
app.use('/api/blanks', blankRouter)
app.use(middleware.unknownEndpoint)
app.use(middleware.errorHandler)
