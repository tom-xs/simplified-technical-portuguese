#!/usr/bin/env bash
# verificar.sh — localiza padrões proibidos pelo PTS-BR em um arquivo de texto.
# Uso: scripts/verificar.sh <arquivo>
# A saída lista linhas com ocorrências; a revisão estrutural (ritmo, voz ativa,
# uma ideia por frase) deve ser feita manualmente com o checklist.

set -u

if [ $# -lt 1 ] || [ ! -f "$1" ]; then
  echo "Uso: $0 <arquivo.md>" >&2
  exit 2
fi

ARQUIVO="$1"
FALHAS=0

verificar() {
  local categoria="$1"
  local padrao="$2"
  local resultado
  resultado=$(grep -inE "$padrao" "$ARQUIVO" || true)
  if [ -n "$resultado" ]; then
    FALHAS=$((FALHAS + 1))
    echo "== $categoria =="
    echo "$resultado"
    echo
  fi
}

verificar "Jargão/meta-referência de IA" \
  'como (modelo de linguagem|uma ia|inteligência artificial)|modelo de linguagem|base de conhecimento|fui treinad[oa]|minhas limitações|não (posso|tenho) (acesso|a capacidade)'

verificar "Conectores vazios de IA" \
  'é importante (notar|destacar|ressaltar|mencionar)|vale (ressaltar|destacar|notar|mencionar)|cabe (ressaltar|destacar)|dado que|no contexto de|em suma|em conclusão|para concluir'

verificar "Tom colaborativo/empatia artificial" \
  'vamos (explorar|mergulhar|ver) (isso )?juntos|entendo sua (frustração|preocupação)|sinto muito|fico feliz em ajudar|espero (ter ajudado|que isso ajude)'

verificar "Burocratismos" \
  'no que (tange|diz respeito)|no tocante|em virtude de|com o intuito de|a fim de|no sentido de|face a\b|faz-se necessári[oa]'

verificar "Pleonasmos/redundâncias" \
  'certeza absoluta|detalhes minuciosos|retornar (de )?volta|o motivo é porque|subir para cima|descer para baixo|elo de ligação|prever (com )?antecedência'

verificar "Abstrações (nominalizações)" \
  'realização de|efetivação de|concretização de|a identificação de|a análise de|é de (fundamental|grande|suma) importância'

verificar "Estrangeirismos não consagrados" \
  '\b(deploy|workaround|feedback|overview|rollout|staging|insight|deadline|brainstorming|know-how)\b'

verificar "Neologismos de IA/marketing" \
  '\b(disruptiv[oa]|sinergia|jornada do usuário|game[- ]changer|mergulho profundo)\b|mergulhar (fundo|a fundo)|potencializar|destravar|elevar o nível'

verificar "Hedging em cadeia" \
  'pode (ser que|potencialmente)|possivelmente pode|acredito que|não tenho certeza|talvez seja possível'

verificar "Contrastes vazios / tríades promocionais" \
  'não (é |são )?(apenas|só|somente).{0,60}é (também|uma)|(rápid[oa]s?|eficientes?|confiáve(l|is)|segur[oa]s?|robust[oa]s?|escaláve(l|is))(, | e | e )[a-záàâãéêíóôõúç]+(, | e )[a-záàâãéêíóôõúç]+'

verificar "Frases longas (>25 palavras)" \
  '^.{140,}$'

if [ "$FALHAS" -eq 0 ]; then
  echo "OK: nenhum padrão proibido encontrado em '$ARQUIVO'."
  echo "Lembre-se: a revisão estrutural (voz ativa, uma ideia por frase, ritmo) é manual."
else
  echo "Total de categorias com ocorrências: $FALHAS"
  exit 1
fi
