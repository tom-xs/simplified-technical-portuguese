---
name: technical-brazilian-portuguese
description: Escreve e revisa textos técnicos em português do Brasil simplificado (PTS-BR), eliminando jargões e maneirismos de IA ("como modelo de linguagem", "é importante notar que", "vale ressaltar"), pleonasmos, burocratismos e estrangeirismos. Use ao redigir, traduzir ou revisar documentação técnica, manuais, procedimentos ou qualquer texto informativo em português brasileiro que precise de clareza e objetividade. Baseado em ASD-STE100, Lei 15.263/2025 (Linguagem Simples), Manual de Redação da Presidência da República, CNJ e Unicamp.
---

# Português Técnico Simplificado (PTS-BR)

**Versão:** 1.1
**Base normativa (pt-BR):** Lei 15.263/2025 (Política Nacional de Linguagem Simples), ABNT NBR ISO 24495-1, Manual de Redação da Presidência da República, CNJ, Unicamp.
**Base metodológica (regras de estrutura):** ASD-STE100, adaptado ao português — regras específicas do inglês (dicionário aprovado, formas "-ing", phrasal verbs) não se aplicam e foram excluídas.

## Objetivo

Produzir textos em português técnico simplificado do Brasil, com clareza, objetividade e acessibilidade. Eliminar jargões de IA, maneirismos artificiais e rebuscamento sintático, mantendo precisão técnica quando necessária.

## Princípios fundamentais

1. **Clareza** — palavras no sentido comum e literal; sem metáforas, ambiguidades ou duplo sentido em textos técnicos.
2. **Concisão** — máximo de informação com mínimo de palavras; sem pleonasmos ("certeza absoluta", "retornar de volta").
3. **Coesão** — progressão temática lógica com conectivos adequados; tempo verbal uniforme no parágrafo.
4. **Objetividade** — tom impessoal (3ª pessoa ou infinitivo); sem adjetivação excessiva ou tom emocional.

## Regras essenciais (resumo)

| Regra | Instrução |
| --- | --- |
| R1 | Frases com no máximo 25 palavras. |
| R2 | Ordem direta: Sujeito + Verbo + Predicado. |
| R3 | Voz ativa sempre que possível. |
| R4 | Uma ideia por frase. |
| R5 | Uma ideia por parágrafo. |
| R6 | Evite orações subordinadas excessivas. |
| R7 | Presente para procedimentos; futuro apenas quando necessário. |
| R8 | Termos técnicos: nome por extenso + sigla + breve explicação na primeira ocorrência. |

## Proibições imediatas (as 10 mais graves)

1. "Como modelo de linguagem AI..." — omita referências à natureza artificial.
2. "Não posso fazer isso porque sou uma IA..." — reformule como limitação factual.
3. "Vamos explorar isso juntos..." — sem tom colaborativo forçado.
4. "É importante notar que..." / "Vale ressaltar que..." — apresente a informação diretamente.
5. "No contexto de..." — seja específico: "No sistema X...", "Na área de Y...".
6. "Dado que..." como conector vazio — use "Como" ou reestruture.
7. "Em suma" / "Para concluir" em respostas curtas.
8. Listas numeradas para respostas simples que caberiam em parágrafo.
9. "Entendo sua frustração" / "Sinto muito" — sem empatia artificial em contextos técnicos.
10. Negrito em mais de 3 termos por parágrafo.

## Arquivos de referência

Consulte conforme a necessidade da tarefa:

- [references/regras-gramaticais.md](references/regras-gramaticais.md) — regras de estrutura completas, tempo verbal, pontuação e formato de textos técnicos.
- [references/vocabulario-controlado.md](references/vocabulario-controlado.md) — palavras proibidas e substituições: jargão de IA, estrangeirismos, burocratismos, pleonasmos.
- [references/maneirismos-ia.md](references/maneirismos-ia.md) — padrões de escrita de IA (pt-BR e en), detectores, densidade de clichês e como corrigir.
- [references/exemplos-reescrita.md](references/exemplos-reescrita.md) — pares original/reescrito comentados.
- [references/checklist-revisao.md](references/checklist-revisao.md) — checklist completo de revisão antes de entregar o texto.
- [references/fontes.md](references/fontes.md) — referências normativas com links.

## Verificação automática

Use o script de checagem para localizar padrões proibidos em um arquivo antes de entregar:

```bash
scripts/verificar.sh <arquivo.md>
```

O script aponta linhas com jargões de IA, burocratismos, pleonasmos e estrangeirismos. A saída do script não substitui a revisão estrutural (ritmo, ordem direta, uma ideia por frase).

## Notas de aplicação

- Esta skill é um **padrão de escrita**, não uma restrição de conteúdo.
- Aplique as regras de forma **adaptativa**: em textos literários ou conversacionais, algumas regras podem ser relaxadas. Em qualquer texto técnico, instrucional ou informativo, as regras são obrigatórias.
- **Revise a própria saída** com o checklist antes de entregar a resposta.
- Se o usuário solicitar um tom diferente (coloquial, poético, humorístico), siga o pedido, mas **avise que as regras de PTS-BR foram suspensas** para aquele contexto.

---

*Idioma: Português do Brasil (pt-BR) | Licença: Uso livre para agentes de IA*
