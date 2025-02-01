import app from "./app.js";
import db from "./config/db.js";

app.listen(process.env.PORT, ()=> {
    console.log(`listening on port ${process.env.PORT}`);
});