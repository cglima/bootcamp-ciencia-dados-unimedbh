# Projeto de Banco de dados

## Projeto ordem de serviço

- ENTIDADES
  - Cliente, Responsável, Pedido e Ordem de serviço
- RELACIONAMENTOS
  - Solicita, Analisa, Executa e Arquiva

## Projeto Universidade

### Levantamento de Requisitos

- Narrativa - Alunos
  - A universidade possui diversos alunos que podem estar matriculados em mais
    de um curso (graduação).
  - Os alunos podem fazer cursos extras fornecidos externa e internamente
    (universidade) para contar como horas complementares.
  - Não há restrição quanto ao número de matérias puxadas se não houver
    sobreposição de horário.
  - Os alunos são submetidos a duas provas por semestre para cada disciplina.
    Eventuais trabalhos devem ser tratados pelo professor para compor a nota da
    prova.

- Narrativa - Disciplinas
  - Cada disciplina é fornecida por um professor. Restrição: apenas por este
    professor.
  - Algumas disciplinas possuem pré-requisitos. Um mesmo pré-requisito pode ser
    associado a mais de uma disciplina.
  - As disciplinas podem ser comuns a cursos distintos. Ex: Cálculo 1 para
    computação e engenharia.
  - O ciclo de vida da disciplina é semestral.

- Narrativa - Professores
  - Os professores que ministram as disciplinas estão associados as coordenações
    de seus respectivos cursos. Ex: Computação, Física, Engenharia ...

- Perguntas:
  - Quais informações de aluno e professor guardar?
  - Qual média para aprovação?
  - Haverá restrição, ou diferentes visões?
  - ...

## Projeto e-commerce

# Ambiente de desenvolvimento

- Ferramenta de design  alternativa
  - Draw.io
  - DBDesigner.net
  - Microsoft workbench
