# Aula 17 – Integração Contínua, Qualidade Automatizada, Métricas e Gestão de Defeitos

## Integrantes
- Wesley Solisnande Santos Zorzolli

## 1. Repositório da Atividade

| Item | Descrição |
|------|-----------|
| Nome do repositório | continua-projeto-qualidade-software-PBL-12 |
| Link do repositório | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12 |

### Estrutura de Diretórios

```
continua-projeto-qualidade-software-PBL-12/
├── tests/
│   ├── test_order.py
│   └── features/
│       └── order_total.feature
├── .github/
│   └── workflows/
│       └── quality.yml
├── conftest.py
├── order.py
├── requirements.txt
└── aula-17-integracao-continua-qualidade.md
```

## 2. Planejamento da Funcionalidade

| Item | Descrição |
|------|-----------|
| Título da Issue | Implementar cálculo do valor total do pedido |
| Objetivo da funcionalidade | Calcular automaticamente a soma dos itens do pedido no LocalEats |
| Link da Issue | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/issues/1 |

## 3. Teste Automatizado

| Item | Descrição |
|------|-----------|
| Tipo de teste | Unitário |
| Objetivo do teste | Verificar o cálculo correto do valor total do pedido a partir de uma lista de valores |
| Link para o arquivo do teste | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/blob/main/tests/test_order.py |

```python
from order import calculate_total


def test_calculate_total():
    assert calculate_total([10, 20, 30]) == 60


def test_calculate_total_empty_list():
    assert calculate_total([]) == 0


def test_calculate_total_single_item():
    assert calculate_total([15]) == 15
```

## 4. Pipeline de Integração Contínua

| Item | Descrição |
|------|-----------|
| Nome do workflow | Quality Check |
| Evento que dispara a execução | push e pull_request |
| Link para o arquivo do workflow | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/blob/main/.github/workflows/quality.yml |
| Link de uma execução do workflow (sucesso, após correção) | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/actions/runs/28482198551 |
| Link de uma execução do workflow (falha, com defeito proposital) | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/actions/runs/28482086652 |

```yaml
name: Quality Check

on:
  push:
  pull_request:

jobs:
  tests:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-python@v5
        with:
          python-version: "3.12"

      - run: pip install -r requirements.txt

      - run: pytest
```

## 5. Indicadores de Qualidade

| Indicador | Valor |
|-----------|-------|
| Quantidade de testes executados | 3 |
| Quantidade de testes aprovados | 3 |
| Quantidade de testes com falha | 0 |
| Status final do pipeline | Sucesso |

## 6. Registro de Defeito

| Item | Descrição |
|------|-----------|
| Título do defeito | Erro no cálculo do valor total |
| Severidade | Alta |
| Link da Issue | https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/issues/2 |

O defeito foi simulado alterando a função `calculate_total` para retornar `sum(items) + 1` (commit [`ab94033`](https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/commit/ab94033c017800cf167a790ed1fa7d46217c48ef)). O problema foi identificado pela falha imediata dos 3 testes automatizados ao rodar o pipeline do GitHub Actions ([execução com falha](https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/actions/runs/28482086652)). A correção foi feita revertendo o cálculo para `sum(items)` no commit [`1f300df`](https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/commit/1f300df), que referenciou `Fixes #2` e fechou automaticamente a Issue de bug; o pipeline voltou ao status de sucesso ([execução corrigida](https://github.com/wesley-zorzolli/continua-projeto-qualidade-software-PBL-12/actions/runs/28482198551)).
