# PBL 12 - Integração Contínua, Qualidade Automatizada, Métricas e Gestão de Defeitos

## 👤 Integrante
- Wesley Solisnande Santos Zorzolli - 782410076

## 🎯 Objetivo do Repositório
Laboratório da Aula 17 da disciplina de Qualidade de Software, com foco em aplicar na prática um fluxo de qualidade automatizado para o sistema LocalEats: testes automatizados, Integração Contínua via GitHub Actions, métricas de qualidade e gestão de defeitos via GitHub Issues.

## 📁 Estrutura e Objetivo de Cada Arquivo

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

- **`order.py`** -> Código-fonte da funcionalidade avaliada: a função `calculate_total(items)`, que soma os valores dos itens de um pedido do LocalEats.
- **`tests/test_order.py`** -> Testes unitários (pytest) que validam o cálculo do total: lista com vários itens, lista vazia e lista com um único item.
- **`tests/features/order_total.feature`** -> Cenário de comportamento (BDD/Gherkin) descrevendo, em linguagem natural, o que se espera da funcionalidade de cálculo do total do pedido.
- **`conftest.py`** -> Ajuste de importação: adiciona a raiz do repositório ao `sys.path` para que `tests/test_order.py` consiga importar `order.py` quando o pytest é executado diretamente (como faz o workflow de CI).
- **`requirements.txt`** -> Dependências necessárias para rodar os testes (`pytest`).
- **`.github/workflows/quality.yml`** -> Pipeline de Integração Contínua ("Quality Check") que roda automaticamente os testes a cada `push` ou `pull_request`, usando Python 3.12 em `ubuntu-latest`.
- **`aula-17-integracao-continua-qualidade.md`** -> Relatório da atividade PBL 12, com a estrutura do repositório, a Issue de planejamento, o teste automatizado, o pipeline de CI, os indicadores de qualidade e o registro de defeito, conforme exigido pela atividade.

## ✅ Fluxo de Qualidade Demonstrado
1. **Planejamento** -> Issue de funcionalidade no GitHub descrevendo o que será desenvolvido.
2. **Implementação + Teste** -> `order.py` desenvolvido com teste automatizado cobrindo o comportamento esperado.
3. **Integração Contínua** -> a cada push, o GitHub Actions executa os testes automaticamente via `quality.yml`.
4. **Métricas** -> indicadores de testes executados/aprovados/com falha e status do pipeline registrados no relatório.
5. **Gestão de Defeitos** -> defeito simulado, identificado pela falha do pipeline e corrigido, com Issue de bug registrada no GitHub.

## 📌 Relatório Completo
Veja [`aula-17-integracao-continua-qualidade.md`](aula-17-integracao-continua-qualidade.md) para os detalhes da atividade, incluindo links das Issues e da execução do pipeline.
