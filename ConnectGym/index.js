const express = require("express");
const app = express();
const port = 3000;
const bodyParser = require("body-parser");

app.use(express.static("public"));

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/KakaoMapAPI.html");
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
