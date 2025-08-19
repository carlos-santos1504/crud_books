README

elixir -v

mix phx.new crud_books / criar phoenix application

https://www.postgresql.org/download/linux/ubuntu/ -- install bd

mix ecto.create // criar DB

dever ser verificado o usuario em config/dev.ex

https://www.edivaldobrito.com.br/dbeaver-no-ubuntu-e-derivados/ -- install view database

mix format // identar codigo

mix ecto.gen.migration create_books_table // criar migrations (deixar sempre em plural)

mix ecto.migrate // executar migrations

passos

instalou o phoenix
instalou dbeaver
configuramos user em dev.ex postgres/postgres
criamos um schema book.ex (schema e uma mapeamento de uma tabela do bd)
criamos migrations para books (title/author/published_year,timestamps)
visualizou no Dbeaver

challanger
criar uma schema categories e migration

proxima semana
relacionar um book na categories

-----------------------

Criar endpoint 
    Cadastrar um livro
        função pra criar
        criar um rota
        criar controller
        criar um view
    Cadastrar um Categoria
          função pra criar
        criar um rota
        criar controller
        criar um view
    Listar um livro
    
    Teste unitario
        factories

