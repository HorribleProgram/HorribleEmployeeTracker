const express = require('express');



const app = express();
const hostname = "http://localhost"
const port = 3000

// Serve static files in public/
app.use(express.static('public'));

app.listen(port, () => {
    console.log(`Server started at ${hostname}:${port}.`);
});


