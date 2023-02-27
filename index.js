require("dotenv").config();
const express = require("express");
const cors = require("cors");

const app = express();

const port = process.env.API_PORT || 8000;

app.use(cors());

app.listen(port, () => console.log(`API Server listening on port ${port}`));
