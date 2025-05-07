# 📁 src

Este diretório contém o código-fonte principal do projeto.

## 🗄️ Configuração do Banco de Dados

Antes de rodar o backend, é necessário configurar o banco de dados PostgreSQL.

1. **Instale o PostgreSQL**:
   - Certifique-se de que o PostgreSQL 15 está instalado na sua máquina.
   - Configure o PostgreSQL para rodar na porta `5433` (ou ajuste a configuração no arquivo `application.properties`).

2. **Abra o PgAdmin4**:
   - Inicie o **pgAdmin 4** e conecte-se ao servidor PostgreSQL:
     - Clique com o botão direito em **Servers** e selecione **Create > Server**.
     - Na aba **General**, insira um nome para o servidor, como `PostgreSQL 15` ou outro de sua preferência.
     - Na aba **Connection**, configure:
       - **Host name/address**: `localhost`
       - **Port**: `5433`
       - **Username**: `postgres`
       - **Password**: Insira a senha do usuário `postgres`.
     - Clique em **Save**.

3. **Crie o Banco de Dados**:
   - No painel esquerdo, clique com o botão direito em **Databases** e selecione **Create > Database**.
   - Na aba **General**, insira o nome do banco de dados como `restaurante`.
   - Clique em **Save**.

4. **Crie o Usuário e Conceda Permissões**:
    
    - No **pgAdmin 4**, abra o **Query Tool**:
    
    - Clique com o botão direito no servidor PostgreSQL e selecione **Query Tool**.
   
    - Execute os seguintes comandos SQL:
     
     -- Crie o usuário admin com a senha root
     CREATE USER admin WITH PASSWORD 'root';

     **Conceda todas as permissões ao usuário admin no banco de dados restaurante**
     GRANT ALL PRIVILEGES ON DATABASE restaurante TO admin;
     

5. **Execute as Migrações do Banco de Dados**:
   - O Flyway será executado automaticamente ao iniciar o backend e criará as tabelas necessárias no banco de dados.

## 🖥️ Como rodar o backend
1. Navegue até a pasta do backend:
    cd src/backend

2. Instale as dependências (se necessário):
  ./mvnw clean install

3. Inicie o servidor
  ./mvnw spring-boot:run

4. O backend estará disponível em:
  http://localhost:8080

## 🖥️ Como rodar o frontend

**OBS:** É necessário que o Node.js esteja instalado na máquina.
1. Navegue até a pasta do frontend:
    cd src/frontend

2. Instale as dependências:
    npm install

3. Inicie o servidor:
    npm run dev

4. O frontend estará disponível em:
  http://localhost:3000