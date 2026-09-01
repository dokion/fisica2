# Apêndice IV — Registro e estilo da prosa

**Função:** fixar COMO a prosa das notas de aula deve soar. Vale para todas as unidades
(UE 1 a UE 4) e para todo tópico novo.

**Alcance — o que este apêndice manda:** registro, pessoa gramatical, concisão, pontuação,
uso de negrito, forma das remissões, rótulos de equação de fonte, títulos de simulação,
estrangeirismos.

**Alcance — o que este apêndice NÃO toca:** nível técnico, conteúdo, deduções, números,
faixas SP, cobertura de OE, ordem dos tópicos, layout Quarto, escolha de biblioteca JS,
paridade HTML/PDF. Tudo isso continua sendo do Mestre, dos Apêndices I–III, do Apêndice Q
e do `AULA-TEMPLATE.md`. **Uma reescrita de estilo que altere qualquer um desses itens
está errada, por definição.**

Aplicado integralmente na UE 3 (commits `ce3ae4c`, `be13745`, `146de12`, `1d947bf`,
`ddbd611`). A UE 3 é o exemplar de referência quando houver dúvida sobre o alvo.

---

## IV1. As três regras

### R1 — Impessoalidade

O texto é **um tratado curto, não uma conversa com o aluno**. Não há narrador e não há
interlocutor.

**Proibido em texto corrido, em callouts, em enunciados de SP e em perguntas orientadoras:**

| Fora | Dentro |
|---|---|
| você, vocês, teu, seu (dirigido ao aluno) | — (some) |
| vamos ver, veremos, obtemos, temos, assumimos, vimos | vê-se, obtém-se, resulta, adota-se, ficou estabelecido |
| nosso, nossa, nossos | o, a, os (ou nome do objeto) |
| considere, imagine, note, repare, perceba, guarde | seja, tome-se, admita-se, cabe observar, fica estabelecido |
| aumente / reduza / arraste / clique / troque / solte | com o aumento de, reduzida a, variando |

O imperativo de segunda pessoa é o vício que mais sobrevive, porque se esconde nas
**perguntas orientadoras** e nas **aberturas de simulação**. Reescrever a pergunta em
construção absoluta ou participial:

> ~~Reduza a velocidade em 20%. Quanto cai a potência?~~
> **Reduzida a velocidade em 20%, quanto cai a potência?**

> ~~Aumente $\alpha$ de 0 a 15°: $C_L$ cresce como?~~
> **Elevando $\alpha$ de 0 a 15°, como cresce $C_L$?**

Exceção única: os verbos de comando dentro de enunciados de problema SP (`Calcule`,
`Determine`, `Classifique`) — são instrução de tarefa, não conversa, e ficam.

### R2 — Sobriedade

Registro sério, sem entusiasmo, sem suspense, sem moral da história.

Sai:

- **Fórmulas de ênfase vazia:** "vale a pena", "aqui está o ponto", "e aqui está o
  ponto mais sutil", "guarde isso", "o ponto conceitual é", "e não é sorte", "a conta
  que a intuição sempre subestima", "é a história inteira".
- **Suspense e promessa:** "voltamos a isso no fim", "o que vem a seguir vai mostrar",
  "e é aí que a coisa muda".
- **Aspas de ironia** e nomes entre aspas ("penetração" da proa, "rechonchudice",
  "hidrodinâmica da água seca" quando não for citação atribuída).
- **Julgamento avaliativo:** "um teste operacional bonito", "a ordem de grandeza é
  eloquente" só se de fato informar; "dramático", "impressionante", "incrível".

Fica: afirmação direta seguida da consequência física. Se o fato é notável, ele se
mostra pelo número, não pelo adjetivo.

### R3 — Concisão sem perda

Mesma informação, menos palavras. Nenhum resultado, número, hipótese, dedução ou
qualificação de validade pode desaparecer na compressão. Quem reescreve deve poder
apontar, para cada frase eliminada, onde a informação dela ficou.

Alvo prático: **redução de 15 a 25% em número de palavras na prosa**, com 100% do
conteúdo técnico preservado.

---

## IV2. Vícios de IA a eliminar

Estes são os padrões que fazem o texto "cheirar a IA" mesmo quando o conteúdo está certo.

### V1 — Travessão em excesso

O travessão (`—`) é o vício número um. Ele substitui a subordinação e produz um ritmo
uniforme e reconhecível.

Usar só onde há **aposto genuíno** ou **ruptura sintática real**. Nos demais casos:
vírgula, dois-pontos, ponto final, ou subordinação (`, que`, `, pois`, `, de modo que`).

**Diagnóstico objetivo** (contando só a prosa, excluindo blocos ```` ``` ````, `<script>`
e `<style>`):

| Unidade | Estado atual | Alvo |
|---|---|---|
| UE 3 (revisada) | 1 travessão a cada **35** linhas | referência |
| UE 1 | 1 a cada 10 | ≥ 25 |
| UE 2 | 1 a cada 8 | ≥ 25 |
| UE 4 | 1 a cada 12 | ≥ 25 |

Comando para medir:

````bash
python3 - <<'EOF'
import io,glob,re
for d in sorted(glob.glob('unidades/unidade-*')):
    N=T=B=0
    for f in sorted(glob.glob(d+'/*.qmd')):
        s=io.open(f,encoding='utf-8').read()
        s=re.sub(r'```.*?```','',s,flags=re.S)
        s=re.sub(r'<script.*?</script>','',s,flags=re.S)
        s=re.sub(r'<style.*?</style>','',s,flags=re.S)
        N+=s.count('\n'); T+=s.count('—'); B+=len(re.findall(r'\*\*[^*]+\*\*',s))
    print("%-26s 1 travessão/%3.0f linhas   1 negrito/%4.1f" % (d.split('/')[-1], N/max(T,1), N/max(B,1)))
EOF
````

O travessão do padrão de lista prescrito pelo `AULA-TEMPLATE.md`
(`- **Nome** — descrição`) **não conta** e não deve ser removido.

### V2 — Negrito como decoração

Negrito marca **termo técnico na sua primeira definição** e **a conclusão de um
raciocínio**. Não marca ênfase emotiva nem palavra que o autor achou importante.

Alvo: **1 negrito a cada 5 a 8 linhas de prosa**. Abaixo de 1 a cada 4, o negrito perdeu
função — nada se destaca quando tudo se destaca.

### V3 — A antítese "não é X, é Y"

"Não é a proa que importa: é a popa." / "Não é sorte: é método." / "Não é cosmético:
é o que permite…" — uma vez por tópico passa; três vezes é assinatura.

Converter em afirmação direta: *"O elemento decisivo é a popa: a proa afilada auxilia,
mas é a traseira que impede o descolamento."*

### V4 — Tricolon e paralelismo insistente

Séries de três em cadência ("a camada limite, o descolamento e os dois arrastos") e
parágrafos que abrem sempre com a mesma estrutura. Variar a extensão e o encadeamento
das frases.

### V5 — Fecho moralizante de seção

Parágrafo final que não acrescenta física e só recapitula com ênfase. Cortar ou fundir
com a frase anterior.

### V6 — Bullet que é frase picada

Bullet com dois travessões e três orações justapostas. Um bullet = uma afirmação, com
pontuação normal.

### V7 — Estrangeirismo solto

Nada de `friction`, `stall`, `linearly independent`, `delta wing` no meio do português.
Termo técnico consagrado em inglês (*slow steaming*, *bound vortex*, *skew*, *offshore*,
*singing*) fica **em itálico** e, na primeira ocorrência, acompanhado do termo em
português quando existir.

---

## IV3. Remissões a outras partes do curso

**Regra: nenhuma remissão numérica no corpo do texto.** O aluno não navega por número, e
a numeração muda quando a ordem de leitura muda (ver `roteiro-moyses-ue3.md`).

| Fora | Dentro |
|---|---|
| "no tópico 3.4" | "no estudo do escoamento viscoso e da camada limite" |
| "como vimos em 3.2" | "conforme estabelecido na estática dos fluidos" |
| "do §2.7" | "na sequência apresentada no texto" |
| "a ressonância (UE 1)" | "a ressonância, estudada na unidade de oscilações" |
| "assunto da UE 4" | "objeto da unidade de termodinâmica" |

**Se a remissão não for necessária ao argumento, cortar em vez de reescrever.** Metade
delas só existia para o autor mostrar que sabia onde o assunto estava.

Exceção: os comentários HTML internos (`<!-- ... AULA-TEMPLATE §4 ... -->`) e os
cabeçalhos de OE são infraestrutura, não texto do aluno — ficam como estão.

---

## IV4. Rótulos de equação da fonte

Quando um tópico segue um livro-texto como fio condutor (Moysés na UE 3), a numeração da
fonte é âncora de navegação em sala, **não** parte do texto do aluno.

**Regra: rótulo da fonte só nos resultados principais — os que estão em `\boxed{}`.**
Equações intermediárias e citações internas perdem o número e passam a ser chamadas pelo
nome do resultado.

```
$$\boxed{\;A_1 v_1 = A_2 v_2\;} \qquad \text{(fluido incompressível, Moysés 2.2.4)}$$   ← fica

"Substituindo em (2.3.2), obtemos…"    → "Levando essa resultante à equação de movimento
                                          da partícula, resulta…"
```

Referência: na UE 3 isso deu 27 rótulos mantidos e 52 removidos.

**Cuidado conhecido:** a substituição automática de `(2.3.2)` pelo nome do resultado
produz duplicações e concordâncias erradas ("da lei de Stevin lei de Stevin", "pelas
definição de", "as equação de movimento e equação de movimento se reduzem"). Ver IV6.

---

## IV5. Títulos de simulação

Título de simulação é **sintagma nominal que nomeia o fenômeno**, não convite ao aluno.

| Fora | Dentro |
|---|---|
| Veja a viscosidade em ação | Queda de uma esfera em fluido viscoso |
| Brinque com o Venturi | Continuidade e Bernoulli num tubo Venturi |
| Descubra o estol | Coeficiente de sustentação e estol |

O convite, quando útil, vive no parágrafo de abertura da simulação — também em registro
impessoal (`A variação da velocidade desloca o ponto de transição.`), nunca no título.

---

## IV6. Método de trabalho (para quem for aplicar a outra unidade)

O que funcionou na UE 3, e por quê:

1. **Reescrever em blocos de passagens explícitas, não com regex sobre o texto.**
   Um script com pares `(trecho_original, trecho_novo)` casados literalmente, aplicados
   com `str.replace(a, b, 1)`, e que **reporta o que não encontrou**. Regex genérica
   sobre prosa produz os artefatos de IV4.

2. **Ler antes de reescrever.** Percorrer o arquivo em fatias de 100–150 linhas,
   reescrever aquela fatia, seguir. Reescrever de memória gera perda silenciosa de
   conteúdo.

3. **Um commit por par de tópicos**, com a mensagem dizendo o que mudou de estilo e o que
   foi corrigido de conteúdo (erros de idioma, artefatos, callouts quebrados). Estilo e
   correção no mesmo commit é aceitável desde que a mensagem separe os dois.

4. **Aproveitar a passagem para caçar defeitos reais.** A releitura linha a linha é a
   melhor oportunidade de encontrar o que o render não acusa: fence `:::` não fechada,
   título de callout quebrado, termo em inglês, unidade errada, código morto dentro do
   `<script>`.

---

## IV7. Checklist de fechamento

Rodar **antes de commitar** a passada de estilo numa unidade.

**Estilo**

- [ ] Zero ocorrências de `você`, `vamos`, `veremos`, `obtemos`, `podemos`, `nosso`,
      `note que`, `considere`, `guarde`, `vale a pena` fora de comentários de código.
- [ ] Zero imperativos de 2ª pessoa nas perguntas orientadoras e nas aberturas de simulação.
- [ ] Travessões: ≥ 25 linhas de prosa por travessão (excluído o padrão de lista do template).
- [ ] Negritos: 1 a cada 5–8 linhas de prosa.
- [ ] Zero remissões numéricas a tópico/seção/unidade no texto do aluno.
- [ ] Rótulos da fonte só em equações `\boxed`.
- [ ] Títulos de simulação são sintagmas nominais.
- [ ] Nenhum estrangeirismo fora de itálico.

**Integridade — nada disto pode ter mudado**

- [ ] Cobertura de OE idêntica à de antes (mesmo número, mesmos códigos, mesmos arquivos).
- [ ] Comentário de objetivos no topo de cada `.qmd` byte a byte igual.
- [ ] `title` e `categories` do YAML intactos.
- [ ] Todo número, faixa SP, parâmetro de simulação e equação `\boxed` inalterado.
- [ ] Texto do professor fora de placeholders `<< >>` intacto (`AULA-TEMPLATE.md` §2).

**Mecânica**

- [ ] Fences `:::` balanceadas em todos os arquivos.
- [ ] Todos os blocos ```` ```{python} ```` executam sem erro.
- [ ] YAML válido.
- [ ] Render do CI concluído com sucesso e páginas respondendo 200.

Verificação em um comando:

```bash
python3 - <<'EOF'
import io,glob,re
for f in sorted(glob.glob('unidades/unidade-*/*.qmd')):
    s=io.open(f,encoding='utf-8').read(); L=s.split('\n')
    op=sum(1 for l in L if l.strip().startswith(':::') and l.strip()!=':::')
    cl=sum(1 for l in L if l.strip()==':::')
    oe=len(re.findall(r'\{\{<\s*ra\s+OE[\d.]+\s+B\d',s))
    yaml = s.startswith('---\n') and '\n---\n' in s[4:400]
    print("%-56s fences %s  OE %-2d  yaml %s" % (
        f.split('/')[-1], 'OK' if op==cl else '*** %d/%d'%(op,cl), oe, 'OK' if yaml else '***'))
EOF
```

---

## IV8. Prompt IV-P1 — passada de registro numa unidade

Prompt de partida para um chat novo. Substituir `<N>` e `<slug>`.

> Leia `CLAUDE.md`, `AULA-TEMPLATE.md` e `_docs/apendice-iv-registro-e-estilo.md`
> integralmente antes de tocar em qualquer arquivo. Se a unidade tiver documento de
> concordância com o fio condutor (como `_docs/roteiro-moyses-ue3.md` para a UE 3), leia
> também.
>
> Tarefa: aplicar a passada de registro do Apêndice IV a `unidades/unidade-<N>-<slug>/`.
> O nível técnico está adequado — **só a linguagem muda**. A UE 3 já está revisada e é o
> exemplar de referência; compare com ela quando tiver dúvida sobre o alvo.
>
> Procedimento obrigatório (Apêndice IV §IV6):
>
> 1. Rode o diagnóstico do §IV2 e registre os números de partida da unidade.
> 2. Trabalhe arquivo por arquivo, lendo em fatias de 100–150 linhas antes de reescrever
>    cada fatia. Não reescreva de memória.
> 3. Reescreva por meio de um script com pares literais `(original, novo)` aplicados com
>    `str.replace(a, b, 1)`, que reporte o que não encontrou. **Não use regex genérica
>    sobre a prosa** — ela produz os artefatos descritos em §IV4.
> 4. Aproveite a releitura para caçar defeitos reais (fence `:::` não fechada, callout com
>    título quebrado, termo em inglês, unidade errada, código morto no `<script>`) e
>    corrija-os na mesma passada.
> 5. Commite a cada par de tópicos, com mensagem que separe o que foi estilo do que foi
>    correção de conteúdo.
> 6. Ao final, rode o checklist §IV7 inteiro e reporte os números de chegada. Só então
>    faça push.
>
> Não altere: conteúdo, deduções, números, faixas SP, parâmetros de simulação, equações
> `\boxed`, cobertura de OE, comentário de objetivos no topo dos arquivos, `title` e
> `categories` do YAML, e o texto do professor fora de placeholders `<< >>`.
