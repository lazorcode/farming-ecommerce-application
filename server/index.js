const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors')

const authRouter = require('./routes/auth');
const adminRouter = require('./routes/admin');
const productRouter = require('./routes/product');
const userRouter = require('./routes/user');
const PORT = 3000;

const app = express();

// Configure CORS to allow requests from http://localhost:52472
const corsOptions = {
    origin: '*',
    optionsSuccessStatus: 200 // Some legacy browsers (IE11, various SmartTVs) choke on 204
};

app.use(cors(corsOptions));

const DB = "mongodb+srv://ialock9876:7525874797@cluster0.jy6nupk.mongodb.net/?retryWrites=true&w=majority";
// const DB = "mongodb://localhost:27017/alfas";

app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

mongoose.connect(DB).then(() => {
    console.log('connection succesful');
}).catch(e => {
    console.log(e);
})

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT} hello`);
});