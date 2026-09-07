# Checklist de Revisão PTS-BR

Antes de entregar qualquer texto, verifique:

## Estrutura

- [ ] Todas as frases têm menos de 25 palavras?
- [ ] A ordem é direta (sujeito + verbo + predicado)?
- [ ] Há apenas uma ideia por frase e por parágrafo?
- [ ] As informações mais importantes vêm primeiro?
- [ ] O tempo verbal é uniforme dentro de cada seção?
- [ ] Listas e tabelas são usadas apenas quando facilitam a compreensão?

## Voz e tom

- [ ] A voz ativa predomina?
- [ ] O tom é impessoal e objetivo?
- [ ] Não há adjetivação excessiva ou superlativos sem dados?

## Vocabulário

- [ ] Termos técnicos estão explicados na primeira ocorrência?
- [ ] Não há estrangeirismos não consagrados?
- [ ] Não há redundâncias ou pleonasmos?
- [ ] Não há burocratismos ("no que tange a", "em virtude de")?
- [ ] Substantivos abstratos foram convertidos em verbos onde possível?

## Anti-IA

- [ ] Não há jargão de IA, meta-referência ou maneirismo artificial?
- [ ] Não há conectores vazios ("é importante notar", "vale ressaltar", "dado que")?
- [ ] Não há tríades artificiais ou contrastes vazios ("não apenas... é também")?
- [ ] O ritmo varia (frases de tamanhos diferentes)?
- [ ] Há detalhes concretos (números, nomes, etapas) em vez de generalizações?

## Verificação automática

Execute o script de checagem e resolva todas as ocorrências:

```bash
scripts/verificar.sh <arquivo.md>
```

O script cobre os padrões lexicais. A revisão estrutural (ritmo, voz, uma ideia por frase) é manual.
