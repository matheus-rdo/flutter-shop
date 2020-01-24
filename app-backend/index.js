const express = require('express');
const cors = require('cors');
const productsAPI = require('./components/products/productsAPI')

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors())

//Modules API's
app.use('/products', productsAPI)

app.listen(3000, () => {
    console.log('Aplicativo rodando na porta 3000!')
})
