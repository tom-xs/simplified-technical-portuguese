# Simplified Technical Portuguese (PTS-BR)

🇧🇷 [Versão em português](README.pt-BR.md)

An AI agent skill for writing and reviewing technical texts in Brazilian Portuguese with clarity and objectivity. It removes AI jargon and mannerisms ("as a language model", "it's important to note that"), pleonasms, bureaucratic phrasing and unassimilated loanwords.

> **Note:** the skill itself is written in Portuguese, since it targets Brazilian Portuguese output. This README describes the project for an international audience.

## Normative basis

- Lei 15.263/2025 — Brazilian National Plain Language Policy;
- ABNT NBR ISO 24495-1 — Plain language (Brazilian adoption of ISO 24495-1);
- Manual de Redação da Presidência da República (Brazilian Presidency's Official Writing Manual) — 4th edition;
- National Council of Justice (CNJ) and Unicamp/IEL writing guides;
- ASD-STE100 — methodological inspiration for the structure rules (adapted to Portuguese).

Full list with links: [references/fontes.md](references/fontes.md).

## Repository structure

```
SKILL.md                        Main instructions (loaded by the agent)
references/
  regras-gramaticais.md         Sentence structure, verb tense, punctuation
  vocabulario-controlado.md     Banned words and substitutions
  maneirismos-ia.md             AI writing patterns and how to fix them
  exemplos-reescrita.md         Annotated before/after rewrite pairs
  checklist-revisao.md          Review checklist before delivery
  fontes.md                     Normative references with links
scripts/
  verificar.sh                  Automated check for banned patterns
```

## Installation

### Via Skills CLI (recommended)

```bash
npx skills add tom-xs/simplified-technical-portuguese
```

### Manual installation

Copy the directory to your agent's skills folder:

```bash
git clone https://github.com/tom-xs/simplified-technical-portuguese.git
cp -r technical-brazilian-portuguese ~/.agents/skills/
```

For Claude Code, use `~/.claude/skills/`. For other agents, check the corresponding documentation.

## Usage

The skill activates when drafting, translating or reviewing technical texts in Portuguese. Example prompts:

- "Revise este manual seguindo o PTS-BR." (Review this manual following PTS-BR.)
- "Reescreva esta documentação sem jargões de IA." (Rewrite this documentation without AI jargon.)
- "Traduza este guia para português técnico simplificado." (Translate this guide into simplified technical Portuguese.)

### Automated check

The script scans a file for banned patterns:

```bash
scripts/verificar.sh documento.md
```

It reports, by category: AI jargon, bureaucratic phrasing, pleonasms, loanwords, promotional triads and long lines. Structural review (active voice, rhythm, one idea per sentence) is manual — use the [checklist](references/checklist-revisao.md).

## Compatibility

Follows the open [Agent Skills](https://agentskills.io) specification. Works with agents that accept the `SKILL.md` format: Claude Code, Codex, Cursor, Gemini CLI, GitHub Copilot and others.

## Contributing

1. Open an issue describing the problem or suggestion.
2. Send a pull request with before/after examples for rule changes.
3. New banned patterns must include a suggested substitution and a source.

## License

MIT — free to use, including by AI agents. See [LICENSE](LICENSE).
