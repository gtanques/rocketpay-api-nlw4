# RocketPay
## API para transferência de saldo através de nickname
![Badge](https://img.shields.io/badge/Elixir-1.11.3%20-green)![Badge](https://img.shields.io/badge/BD-PostgreSQL-blue)
  
  
  Iniciar Phoenix servidor:

  * Instalar dependências `mix deps.get`
  * Criar BD e tabelas `mix ecto.setup`
  * rodar servidor `mix phx.server`

Rodando em [`localhost:4000`](http://localhost:4000)

## Rotas
#### - Criar usúario e conta 
    [Post] http://localhost:4000/api/users
    
    {
      "name": "name",
      "email": "email@email.com",
      "nickname": "nickname",
      "age": 18,
      "password": "password"
    }

#### - Depósito  
    [Post] http://localhost:4000/api/accounts/user_id
  
    {
	    "value": "Valor"
    } 

#### - Saque  
    [Post] http://localhost:4000/api/accounts/user_id
  
    {
	    "value": "Valor"
    } 

#### - Transferência 
    [Post] http://localhost:4000/api/accounts/transaction
  
    {
      "value" : "valor",
      "to" : "id_para",
      "from" : "id_de"
    }