Feature: Página Inicial
    As a usuário autenticado 
    I  quero ver as principais recomendações e funcionalidades do aplicativo na página inicial
    So that eu possa ter uma melhor experiência musical

    Scenario: Usuário visita a página inicial deslogado
        Given que o usuário está na "página inicial"
        And o usuário não está autenticado
        Then o usuário deve ver uma mensagem para o redirecionado para a página de login
