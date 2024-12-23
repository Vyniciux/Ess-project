Feature: Página Inicial
    As a usuário autenticado 
    I  quero ver as principais recomendações e funcionalidades do aplicativo na página inicial
    So that eu possa ter uma melhor experiência musical

    Scenario: Usuário visita a página inicial deslogado
        Given que o usuário está na "página inicial"
        And o usuário não está autenticado
        Then o usuário deve ver uma mensagem para o redirecionado para a página de login

    Scenario: Usuário navega para a página de um artista
        Given que o usuário está na "página inicial"
        When selecionar o artista "Tom Jobim"
        Then o usuário deve ser redirecionado para a página do artista "Tom Jobim"

    Scenario: Usuário vê as principais funcionalidades
        Given que o usuário está na página inicial
        Then o usuário deve ver a seção de principais funcionalidades

    Scenario: Usuário quer fazer uma busca
        Given que o usuário está na "página inicial"
        When o usuário seleciona a opção de busca
        Then ele será redirecionado para a página de busca

    Scenario: Visualizar sugestões personalizadas
        Given O usuário "João" está autenticado no aplicativo
        And O sistema possui sugestões personalizadas baseadas no histórico de João
        When O usuário acessa a tela inicial
        Then O sistema exibe uma lista de playlists, músicas e artista sugeridos 
    
    Scenario: Acessar músicas em alta
        Given O usuário "Maria" está autenticado no aplicativo
        And Existem músicas categorizadas como "Em alta" no sistema
        When O usuário seleciona a opção "Em alta" na página inicial
        Then O sistema exibe uma lista de músicas mais populares

    Scenario: Reproduzir uma música diretamente da Página Inicial
        Given O usuário "Ana" está na "Página Inicial"
        And Uma música é exibida em qualquer uma das seções
        When O usuário seleciona uma música específica
        Then O sistema inicia a reprodução da música selecionada
        And A música aparece no player localizado na parte inferior esquerda da tela

    Scenario: Usuário acessa a página de perfil
        Given que o usuário "Mariana" está autenticado no aplicativo
        And que o usuário está na "Página Inicial"
        When o usuário seleciona a opção "Perfil" no menu lateral
        Then o sistema redireciona o usuário para a página "Perfil"
        And exibe as informações pessoais de "Mariana", como nome, foto, playlists criadas e configurações.