const express = require('express')
const app = express()
const cors = require('cors')

const pool =  require('./db')


// middleware
app.use(cors())
app.use(express.json())


app.listen(5000,()=>{
    console.log('Servidor no ar')
})


// Rotas



// Inserção no banco
app.post('/addveiculos', async(req,res)=>{
    const {id_vei,descricao, ano,chassi,valor,marca,modelo, cor,tipo_veic,id_forn,id_vend} = req.body;
  try{
        
        const newveiculos = await pool.query("insert into veiculos (id_vei,descricao, ano,chassi,valor,modelo,marca,cor,tipo_veic,id_forn,id_vend) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11) returning *;",
                                        [id_vei, descricao, ano,chassi,valor,modelo,marca,cor,tipo_veic,id_forn,id_vend]
                                        );
       
        res.status(200).send(newveiculos.rows[0])

    }catch(err){
        console.error(err.message)
    }
})

app.post('/addcarro', async(req,res)=>{
    const {id_car, descricao} = req.body;
    try{
        
        const newcarro = await pool.query("insert into carro (id_car, descricao) values ($1,$2) returning *;",
                                        [id_car, descricao]
                                        );
            
       
        res.status(200).send(newcarro.rows[0])

    }catch(err){

        console.error(err.message)
    }
})
app.post('/addmoto', async(req,res)=>{
    const {id_moto, descricao} = req.body;
    try{
        
        const newmoto = await pool.query("insert into carro (id_moto, descricao) values ($1,$2) returning *;",
                                        [id_moto, descricao]
                                        );
             
                                    

            
       
        res.status(200).send(newmoto.rows[0])

    }catch(err){
        
        console.error(err.message)
    }
})

app.post('/addfornecedor', async(req,res)=>{
    const {id_forn, nome, cnpj, email, senha, rua, bairro, cidade, estado, numero} = req.body;
  try{
        
        const newfornecedor = await pool.query("insert into fornecedor (id_forn, nome, cnpj, email, senha, rua, bairro, cidade, estado, numero) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) returning *;",
                                        [id_forn, nome, cnpj, email, senha, rua, bairro, cidade, estado, numero]
                                        );
       
        res.status(200).send(newfornecedor.rows[0])

    }catch(err){
        console.error(err.message)
    }
})
app.post('/addcliente', async(req,res)=>{
    const {id_cli, nome, cpf, email, senha, rua, bairro, cidade, estado, numero} = req.body;
  try{
        
        const newcliente= await pool.query("insert into cliente (id_cli, nome, cpf, email, senha, rua, bairro, cidade, estado, numero) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) returning *;",
                                        [id_cli, nome, cpf, email, senha, rua, bairro, cidade, estado, numero]
                                        );
       
        res.status(200).send(newcliente.rows[0])

    }catch(err){
        console.error(err.message)
    }
})
app.post('/addfuncionario', async(req,res)=>{
    const {id_func, nome, cpf, email, senha, rua, bairro, cidade, estado, numero} = req.body;
  try{
        
        const newfuncionario= await pool.query("insert into funcionario (id_func, nome, cpf, email, senha, rua, bairro, cidade, estado, numero) values ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10) returning *;",
                                        [id_func, nome, cpf, email, senha, rua, bairro, cidade, estado, numero]
                                        );
       
        res.status(200).send(newfuncionario.rows[0])

    }catch(err){
        console.error(err.message)
    }
})


// Listagem das queries

app.get('/addveiculos',async (req,res)=>{
    try{
        const view = await pool.query('select * from veiculos;')

        res.json(view.rows)
    }catch(error){
        console.log(error.message)
    }
   

})

app.get('/addcarro/addveiculos',async (req,res)=>{
    try{
        const view = await pool.query('SELECT marca,modelo FROM public.veiculos inner join carro on carro.id_car = veiculos.id_vei;')

        res.json(view.rows)
    }catch(error){
        console.log(error.message)
    }
   

})
app.get('/addfuncionario/addcliente',async (req,res)=>{
    try{
        const view = await pool.query('SELECT cpf, nome  FROM public.funcionario UNION SELECT cpf,nome FROM public.cliente;')

        res.json(view.rows)
    }catch(error){
        console.log(error.message)
    }
   

})

