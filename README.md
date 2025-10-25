# Gerador Sequencial

Programa em lote (batch) para Windows que gera números sequenciais com dígitos verificadores aleatórios.

## Descrição

Este script permite gerar uma quantidade especificada de números sequenciais, cada um com um dígito verificador aleatório de 0 a 9. É útil para criar conjuntos de números de identificação, códigos, ou qualquer aplicação que necessite de numeração sequencial com validação.

## Funcionalidades

- ✅ Geração de números sequenciais a partir de um número inicial
- ✅ Adição automática de dígito verificador aleatório (0-9)
- ✅ Interface interativa via linha de comando
- ✅ Validação de entrada de dados
- ✅ Suporte a múltiplas execuções sem reiniciar o programa
- ✅ Codificação UTF-8 para suporte a caracteres especiais

## Requisitos

- **Sistema Operacional:** Windows (qualquer versão que suporte arquivos .bat)
- **Permissões:** Execução de scripts batch

## Como Usar

### Execução

1. Faça o download do arquivo `gerador_sequencial.bat`
2. Execute o arquivo clicando duas vezes ou via linha de comando:
   ```batch
   gerador_sequencial.bat
   ```

### Passo a Passo

1. O programa solicitará o **número inicial** (sem o dígito verificador)
2. Digite a **quantidade de números** que deseja gerar
3. Os números sequenciais serão exibidos com seus respectivos dígitos verificadores
4. Escolha se deseja gerar outro conjunto de números (S/N)

### Exemplo de Uso

```
Bem-vindo ao Programa de Geração de Números Sequenciais

Digite o número inicial (sem o dígito verificador): 1000
Digite a quantidade de números a serem gerados: 5

Números sequenciais gerados:

10017
10023
10035
10041
10058

Você deseja gerar outro conjunto de números? (S/N):
```

## Estrutura do Projeto

```
gerador_sequencial/
├── gerador_sequencial.bat    # Script principal
└── README.md                  # Este arquivo
```

## Detalhes Técnicos

- **Codificação:** UTF-8 (chcp 65001)
- **Dígito Verificador:** Gerado aleatoriamente usando `%random%`
- **Validação:** Verifica se a quantidade inserida é um número válido
- **Loop:** Permite execuções múltiplas sem reiniciar

## Limitações

- O dígito verificador é gerado aleatoriamente (0-9), não seguindo um algoritmo específico de validação
- Funciona apenas em sistemas Windows
- Números gerados são exibidos apenas na tela (não são salvos automaticamente em arquivo)

## Possíveis Melhorias

- [ ] Implementar algoritmo de dígito verificador específico (Módulo 10, Módulo 11, etc.)
- [ ] Adicionar opção de exportar para arquivo (TXT, CSV)
- [ ] Incluir formatação customizável dos números
- [ ] Adicionar validação do número inicial

## Autor

**Wárreno Hendrick Costa Lima Guimarães**

Analista de Gestão de Rede Credenciada

## Licença

Copyright (c) 2024 Wárreno Hendrick Costa Lima Guimarães

---

## Suporte

Para reportar problemas ou sugerir melhorias, por favor abra uma issue no repositório do projeto.
