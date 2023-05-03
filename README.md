## Get started

# url-shortener-accelerator

A URL shortener is a JavaScript module that transforms any long URL into a shorter and more readable link. When a user clicks the shortened version, they’re automatically forwarded to the destination URL.
The user needs to get the server running and use MongoDb as the database and can use this module in http methods as shown in the example below

## Install

```bash
yarn add url-shortener
```

```bash
npm i --save url-shortener
```

## Usage

`config/db.config.js`
```js
const mongoose = require('mongoose')

//declare a Database string URI 
const DB_URI = process.env.DB_URL;

//establishing a database connection 
mongoose.connect(DB_URI, {
    useNewUrlParser: true,
    useUnifiedTopology: true
})

const connection = mongoose.connection
// export the connection object 
module.exports = connection
```

`server.js`
```js
const express = require("express");
const mongoose = require("mongoose");
const app = express();
const cors = require("cors");
const {
  urlShortenerSchema,// return a mongoose schema
  PostUrlShortener, //function to convert long url to short url and save the short url in the database
  getUrlShortener, //function to redirect to the long/original URL on using the short url
} = require("@yml-org/fe-component-library/packages/url-shortener/src/index.ts");

// Database config 
const connection = require("./config/db.config");
const baseUrl = "http:localhost:7000";
connection.once("open", () => console.log("MongoDB Connected"));
connection.on("error", () => console.log("Error"));

//instantiate a mongoose schema 
const URLSchema = new mongoose.Schema(urlShortenerSchema());
const Url = mongoose.model("Url", URLSchema);

// Routes Config 
app.use(
  express.json({
    extended: false,
  })
);
app.use(cors());

app.post("/api/url/shorten", function async(req, res) { 
  PostUrlShortener(req, res, baseUrl, Url);
});

app.get("/:code", async (req, res) => {
  getUrlShortener(req, res, Url);
});

// Listen for incoming requests 
const PORT = process.env.PORT || 7000;
app.listen(PORT, console.log(`server started, listening PORT ${PORT}`));
```
