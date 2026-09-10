# Português Técnico Simplificado (PTS-BR)

🇺🇸 [English version](README.md)

Skill de agente de IA para escrever e revisar textos técnicos em português do Brasil com clareza e objetividade. Elimina jargões e maneirismos de IA ("como modelo de linguagem", "é importante notar que", "vale ressaltar"), pleonasmos, burocratismos e estrangeirismos não consagrados.

## Base normativa

- Lei 15.263/2025 — Política Nacional de Linguagem Simples;
- ABNT NBR ISO 24495-1 — Linguagem simples;
- Manual de Redação da Presidência da República — 4ª edição;
- Conselho Nacional de Justiça (CNJ) e Unicamp/IEL;
- ASD-STE100 — inspiração metodológica para as regras de estrutura (adaptadas ao português).

Lista completa com links: [references/fontes.md](references/fontes.md).

## Estrutura

```
SKILL.md                        Instruções principais (carregadas pelo agente)
references/
  regras-gramaticais.md         Estrutura de frases, tempo verbal, pontuação
  vocabulario-controlado.md     Palavras proibidas e substituições
  maneirismos-ia.md             Padrões de escrita de IA e como corrigi-los
  exemplos-reescrita.md         Pares original/reescrito comentados
  checklist-revisao.md          Checklist de revisão antes de entregar
  fontes.md                     Referências normativas com links
scripts/
  verificar.sh                  Checagem automática de padrões proibidos
```

## Instalação

### Via Skills CLI (recomendado)

```bash
npx skills add <usuario>/technical-brazilian-portuguese
```

### Instalação manual

Copie o diretório para a pasta de skills do seu agente:

```bash
git clone https://github.com/tom-xs/simplified-technical-portuguese.git
cp -r technical-brazilian-portuguese ~/.agents/skills/
```

Para Claude Code, use `~/.claude/skills/`. Para outros agentes, consulte a documentação correspondente.

## Uso

A skill ativa ao redigir, traduzir ou revisar textos técnicos em português. Exemplos de pedidos:

- "Revise este manual seguindo o PTS-BR."
- "Reescreva esta documentação sem jargões de IA."
- "Traduza este guia para português técnico simplificado."

### Verificação automática

O script localiza padrões proibidos em um arquivo:

```bash
scripts/verificar.sh documento.md
```

A saída lista, por categoria, jargões de IA, burocratismos, pleonasmos, estrangeirismos, tríades promocionais e linhas longas. A revisão estrutural (voz ativa, ritmo, uma ideia por frase) é manual: use o [checklist](references/checklist-revisao.md).

## Compatibilidade

Segue o padrão aberto [Agent Skills](https://agentskills.io). Compatível com agentes que aceitam o formato `SKILL.md`: Claude Code, Codex, Cursor, Gemini CLI, GitHub Copilot e outros.

## Contribuição

1. Abra uma *issue* descrevendo o problema ou a sugestão.
2. Envie um *pull request* com exemplos de antes/depois para mudanças de regra.
3. Novos padrões proibidos devem incluir substituição sugerida e fonte.

## Licença

MIT — uso livre, inclusive por agentes de IA. Veja [LICENSE](LICENSE).
