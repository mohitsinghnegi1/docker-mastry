import express from 'express';
const app = express();

app.get('*', (req, res) => {
    res.send('Hello world');
});


const PORT = process.env.PORT || 8000;

app.listen(PORT, () => {
    console.log('server is listining on port %s ', PORT);
});