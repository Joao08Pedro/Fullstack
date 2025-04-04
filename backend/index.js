import knex from "knex";
import express from "express";

const app = express();
const port = 1212;
app.use(express.json());

const knexDb = knex({
    client:"mysql2",
    connection:{
        host:"127.0.0.1",
        port:3306,
        user:"root",
        password:"senacrs",
        database:"live",
    },
});

app.get("/", (req,res) => {
    res.send("Bom dia");
})

app.get("/viewers", async (req, res) => {
    const viewer = await knexDb(`Viewer`).select("*");
    res.status(200).json({ viewer });
});

app.listen(port, ()=>{
    console.log(`Rodando na porta ${port}...`);
})