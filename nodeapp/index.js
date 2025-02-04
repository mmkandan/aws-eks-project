const express = require('express');
const path = require('path');
const app = express();
const port = 3000;

// Serve static files like images
app.use('/images', express.static(path.join(__dirname, 'images')));

// Endpoint to serve the main page with image
app.get('/', (req, res) => {
  res.send(`
    <html>
      <body>
        <h1>Sample Node.js App</h1>
        <img src="/images/image.jpg" alt="Sample Image" width="300"/>
      </body>
    </html>
  `);
});

app.listen(port, () => {
  console.log(`App is running on http://localhost:${port}`);
});
