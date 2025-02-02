# PROJETO RECODE - Entrega Individual
Deploy para fácil visualização do projeto: https://recode-agenciadeviagens.vercel.app/index.html

Youtube para vídeo com alguns detalhes do projeto: https://www.youtube.com/watch?v=ZXz0h8kN2GI

## Descrição do Projeto
 Projeto de agência de viagens para entrega individual do RECODE PRO AI 2025. O site desenvolvido no projeto em questão é para uma agência de viagens para o exterior.

O nome da marca, Con Air, é uma referência a um filme de ação que tem uma viagem de avião como cenário principal. Uma preferência pessoal do desenvolvedor devido a um lapso de criatividade temporário.

 O público alvo são pessoas com capital para poder visitar atrações estrangeiras por um período de tempo.


## Estrutura do Projeto
### Arquivos Principais
- `index.html` - Página inicial
- `login.html` - Página de autenticação do usuário
- `signup.html` - Página de cadastro do usuário
- `destinos.html` - Catálogo de destinos
- `pacotes.html` - Página de pacotes de viagem
- `item-details.html` - Visualização detalhada dos itens de viagem
- `style.css` - Folha de estilos principal
- `script.js` - Funcionalidades JavaScript
- `physical-schema.sql` - Esquema do banco de dados

### Tecnologias Utilizadas
- HTML5
- CSS3
- JavaScript
- Bootstrap 5.3.3
- Font Awesome 6.0.0 (para os ícones)
- SQL (Esquema do banco de dados)

### Destaques do Código
#### Recursos Frontend
1. **Design Responsivo**
  - Sistema de grid do Bootstrap para layouts responsivos
  - Abordagem mobile-first
  - Breakpoints personalizados para diferentes tamanhos de tela
2. **Arquitetura CSS**
  - Variáveis CSS para tema consistente
  - Animações personalizadas para cards e efeitos hover
3. **Elementos Interativos**
  - Alternador de visibilidade de senha
  - Efeitos hover interativos nos cards
  - Menu de navegação responsivo
4. **Organização de Componentes**
  - Seções modulares de cabeçalho e rodapé
  - Componentes de card reutilizáveis
  - Estilização consistente de formulários em todas as páginas

## Design e Interface
Conceito visual e identidade da marca Paleta de cores escolhida Inspirações de design Responsividade e adaptação para diferentes dispositivos

O design geral do site foi baseado em pesquisas em sites de viagens bem estabelecidos e como eram seus designs. Foi feito um esforço para pegar elementos em comum entre esses sites.

A paleta de cores foi escolhida utilizando ferramenta online para criação de paleta de cores, buscando uma combinação de cores suave que fugisse um pouco das cores normalmente usadas por sites do mesmo segmento.

A responsividade do site foi feita levando em conta a fluidez dos cards, tentando estabelecer breakpoints de forma que os cards pudessem ficar bem distribuídos pela tela não importa o tamanho do display. Era um requisito que os cards de destaque e com o filtro, nas páginas que os pussuem, ficassem no topo, dando o devido destaque.

## Modelagem de Dados
### Entidades Escolhidas
- CLIENTE
  - Entidade central para armazenar informações dos clientes
  - Dados pessoais essenciais para contato e identificação
  - Vinculada ao endereço para gestão de localização
  - Essencial para gestão de reservas e relacionamento

- DESTINO
  - Representa os locais de viagem disponíveis
  - Armazena informações importantes sobre localidades
  - Inclui dados como cidade, país, clima
  - Ponto central conectando atrações e hospedagens

- PACOTE
  - Representa os pacotes de viagem comercializados
  - Contém detalhes como duração e preços
  - Combina destinos, hospedagens e transportes
  - Conecta-se aos destinos através de PACOTE_DESTINO

- RESERVA
  - Controla as reservas dos clientes
  - Mantém status de reserva e informações de pagamento
  - Vincula clientes aos pacotes via RESERVA_PACOTE

- HOSPEDAGEM
  - Cadastro de estabelecimentos de hospedagem
  - Inclui hotéis, pousadas e resorts
  - Contém informações de preço, categoria e comodidades

- TRANSPORTE
  - Gerencia opções de deslocamento
  - Inclui diferentes modalidades (aéreo, terrestre, marítimo)
  - Controla rotas, empresas e classes de serviço

- ATRACAO
  - Pontos turísticos e atividades
  - Vinculada aos destinos
  - Inclui descrições e valores

### Justificativa dos Relacionamentos
- CLIENTE-RESERVA
  - Relacionamento 1:N
  - Um cliente pode fazer várias reservas
  - Cada reserva pertence a um único cliente

- PACOTE-DESTINO
  - Relacionamento N:N através de PACOTE_DESTINO
  - Um pacote pode incluir múltiplos destinos
  - Um destino pode fazer parte de vários pacotes

- RESERVA-PACOTE
  - Relacionamento N:N através de RESERVA_PACOTE
  - Uma reserva pode incluir múltiplos pacotes
  - Um pacote pode estar em várias reservas

- DESTINO-HOSPEDAGEM
  - Relacionamento 1:N
  - Um destino pode ter várias hospedagens
  - Cada hospedagem pertence a um único destino

- PACOTE-TRANSPORTE
  - Relacionamento N:N através de PACOTE_TRANSPORTE
  - Um pacote pode incluir múltiplos transportes
  - Um transporte pode estar em vários pacotes

## Considerações de Desenvolvimento
Durante o desenvolvimento foi normal encontrar momentos em que meu conhecimento de bootstrap e css não permitiam que minha visão do projeto se concretizassem, por isso foi essencial o uso de ferramentas IA, documentação das tecnologias e da comunidade do Stack Overflow.

### Lista com possíveis melhorias:
- Melhorias Técnicas
  - Implementar validação de formulários para páginas de login e cadastro
  - Adicionar funcionalidade de busca para destinos e pacotes
  - Criar painel de controle do usuário para gerenciar reservas
  - Implementar fluxo para redefinição de senha
  - Adicionar validação de entrada do lado do cliente usando JavaScript

- Melhorias de Interface/Experiência do Usuário:
  - Adicionar opção de tema escuro

- Funcionalidades a Adicionar:
  - Sistema de avaliações e comentários dos usuários
  - Funcionalidade de lista de desejos
  - Integração com calendário de reservas
  - Suporte a múltiplos idiomas

- Otimizações de Performance:
  - Otimização de imagens
  - Melhoria no tempo de carregamento inicial

## Referências
Foram pesquisados vários sites de viagem sendo no final selecionados os dois que mais agradaram sendo eles usados como referência. Os sites usados principalmente como referência são:
https://br.memphistours.com/
https://www.agaxtur.com.br/

## Ferramentas e Recursos Utilizados
Além das matérias do curso Desenvolver Full Stack da RECODE PRO AI 2025, o desenvolvimento deste projeto foi auxiliado pelo GitHub Copilot, integrado ao VSCode, que forneceu sugestões valiosas de código HTML, CSS e JavaScript em tempo real no VS Code. A ferramenta foi especialmente útil na personalização de componentes Bootstrap, na otimização de código CSS para responsividade e solução de dúvidas e empasses que surgiam no decorrer do desenvolvimento. Da mesma forma também foi utilizada a ferramenta Codeium, também integrada ao VSCode.

O Stack Overflow serviu como fonte importante de consulta para resolução de desafios específicos de onde o auxilio de IA não bastava para resolver as dúvidas e empasses. Para os recursos visuais, o Unsplash foi utilizado como fonte de imagens livres de direitos autorais, permitindo popular os cards e banners com imagens placeholders que contribuem para a visualização de como o projeto ficaria completo.
