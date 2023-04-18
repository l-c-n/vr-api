# language: pt

Funcionalidade: Pesquisar Estabelecimento
    Para averiguar informações, o usuário do sistema deseja
    poder consultar informações dos tipos de estabelecimento

    Cenario: Buscar informações de tipo de estabelecimento
        Dado que o usuario consulte informacoes de tipo de estabelecimento
        Quando ele realizar o GET
        Entao o status code deve ser "200"
        E a chave "typeOfEstablishment" deve ser retornada