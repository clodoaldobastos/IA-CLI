# IA-CLI
A CLI (Command Line Interface) são assistentes de inteligência artificial que operam diretamente no terminal, permitindo a desenvolvedores gerar código, depurar (debug), refatorar e automatizar tarefas complexas usando linguagem natural sem sair do fluxo de trabalho.

Rodar ferramentas de IA CLI dentro de um container Docker é uma prática recomendada para manter o sistema hospedeiro limpo, isolar dependências (como Python ou Node.js) e garantir segurança ao permitir que a IA manipule arquivos em um ambiente controlado.

Cada pasta tera um dockerfile, para criação do ambiente e readme.md com as instruções de compilação e uso da imagem criada.

# Minha recomendação da estrurura para um uso seguindo as melhores pratica.

AI Platform Engineering + AI SRE

| Estrutura       | Uso            |
| --------------- | -------------- |
| `.agents`       | especialização |
| `.skills`       | execução       |
| `.rules`        | segurança      |
| `.hooks`        | auditoria      |
| `opencode.json` | MCPs           |
|  .graphify      | dependências   |
|  .gitnexus      | repos/config   |
