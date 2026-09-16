# Pendências e decisões — FIS-02

**Função:** registro único do que está aberto e do que já foi decidido. As pendências
estavam espalhadas pelos §7 dos roteiros de concordância e por comentários `[VERIFICAR]`
dentro das notas de aula, o que as tornava invisíveis. Este documento é o lugar de olhar
primeiro.

**Como usar:** ao fechar uma pendência, riscar a linha e datar. Ao abrir uma nova, entrar
aqui e não só no arquivo em que ela mora.

---

## 1. Pendências abertas

### 1.1 Dados que só o professor tem

Três marcas `[VERIFICAR]` no repositório, todas por falta de dado de fonte. Nenhuma é
dúvida de física; são valores que dependem de manual, documentação de bordo ou decisão
institucional.

| Onde | O que falta |
|---|---|
| `3-01`, cabeçalho de OE | Âncora STCW do OE 3.4 (impacto da viscosidade). Nenhum *learning objective* dos Model Courses 7.03/7.04 cobre o item diretamente |
| `3-08`, seção do vórtice de esteira | Confirmação dos números da pá contra o modelo de hélice real; a queda de 0,2 bar depende do raio de núcleo assumido, 0,1 m |
| `4-14`, callout dos ciclos reais | Faixas típicas de consumo específico da planta do navio-escola, a tomar da documentação do fabricante |

### 1.2 Entregáveis não iniciados

| Item | Estado | Observação |
|---|---|---|
| **Listas de exercícios** | não iniciado | O Apêndice Q §Q2 prescreve `lista-NN.qmd` e não existe nenhuma. Os problemas dos capítulos 1–2 e 7–11 do Moysés estão extraídos e indexados, e alimentam o banco Dokion, não a apostila (Apêndice Q §Q1). Prompt: Mestre **P4** ou **Q-P3** |
| **PLADIS** | não iniciado | Só o template está no repositório. Agora é executável: a distribuição de pares fechou com a CHD, que era o pré-requisito. Prompt: Apêndice II **II-P1**, conferência **II-P2** |
| **Aula prática da UE 2 e da UE 3** | sem contrapartida | 2 h-aula na UE 2 e 4 h-aula na UE 3 constam do sumário. O PLADIS as trata em tabela própria (Apêndice II §II5); o cronograma do `index.qmd` cobre só a carga expositiva |
| **Placeholders institucionais do `index.qmd`** | 4 abertos | Semestre/ano no título, critério de aprovação, 2ª chamada e integridade acadêmica. Dependem de regra da instituição |

### 1.3 Roteiros de concordância que faltam

As UE 1 e 2 seguem a ordem numérica do sumário e **não têm** documento de concordância.
Isso é estado de fato, não decisão: nunca foram examinadas contra o livro. Os capítulos
correspondentes do Moysés são o 3 e o 4 (oscilações) e o 5 e o 6 (ondas e som), e os
extratos estão na mesma pasta do Drive de onde saíram os demais.

Enquanto não houver roteiro, nas UE 1 e 2 não se aplicam: a marca `{{< fora >}}`, a regra
de rótulo de equação do §IV4 e o §IV4.1 sobre síntese da fonte.

---

## 2. Decisões tomadas

Ordem cronológica. Cada uma está registrada também no documento que a governa; a coluna
aponta onde.

| # | Decisão | Onde está registrada |
|---|---|---|
| 1 | **Ordem de leitura pelo livro-texto, começando pela UE 3.** Os tópicos do sumário são balizas de cobertura, não de ordem. Os nomes de arquivo continuam presos ao número do tópico | `roteiro-moyses-ue3.md`, CLAUDE.md §1 |
| 2 | **Calibração da passada de registro pela UE 3**, que é o exemplar de referência | Apêndice IV §IV2 |
| 3 | **O piso de preservação vence a meta de concisão.** A faixa de 15–25% do §IV1 R3 é alvo, não obrigação: em prosa já densa vale o número obtido, desde que nada técnico saia | Apêndice IV §IV1 |
| 4 | **Travessão livre é o critério; o índice do comando é indicador.** O índice conta YAML, cabeçalho de OE e comentários, que são intocáveis | Apêndice IV §IV2 V1, §IV7 |
| 5 | **O texto é síntese, não decalque.** A fonte dá ordem, fio condutor e resultados, não a redação. Extensão de nota de aula, não de livro | Apêndice IV §IV4.1 |
| 6 | **Títulos de seção estão fora da regra de decalque**, consagrados ou não | Apêndice IV §IV4.1 |
| 7 | **Ordem de leitura também na UE 4**, capítulos 7 a 11, com um deslocamento: máquinas térmicas (4.14) antes de entropia (4.13), porque é do ciclo de Carnot que o livro constrói a entropia | `roteiro-moyses-ue4.md` §1 |
| 8 | **Marca de procedência `{{< fora >}}`.** Adaga † em seção isolada sem correspondente na fonte; tópico inteiro fora da fonte leva nota na abertura | CLAUDE.md §5, `index.qmd` |
| 9 | **Cronograma redistribuído sobre os 40 pares da CHD**, pela carga do sumário, para ajuste do professor com o tempo | `index.qmd`, §6 dos dois roteiros |
| 10 | **Apostila em PDF por perfil de livro**, e não por `format: pdf` no projeto de website, que geraria um PDF por página | CLAUDE.md §5, `_quarto-apostila.yml` |

---

## 3. Lições do exercício

Três padrões que se repetiram e valem para as próximas unidades.

**O sumário subestima o livro.** Das sete balizas que o roteiro da UE 4 levantou como
ausentes no Moysés a partir do índice, **cinco não resistiram à leitura do texto**: o
livro cobria convecção e radiação no nível que o OE pede, deduzia os coeficientes de
dilatação, trazia a parede composta, desenvolvia a entalpia até o escoamento estacionário
e descrevia o circuito completo de refrigeração. Levantar gaps pelo sumário produz lista
inflada; só a leitura decide.

**Fórmula postulada é o defeito mais comum.** Os três achados de maior peso da UE 4 foram
do mesmo tipo: `ΔU = Q − W` apresentada como definição em vez de consequência da
independência de caminho do trabalho adiabático; a entropia definida como "medida da
desordem" em vez de construída a partir do teorema de Clausius; e a equação de estado
"derivada" por postulação. Em todos, o passo que faltava era o argumento que estabelece a
**existência** do objeto.

**O PDF encontra o que o HTML esconde.** A primeira compilação da apostila parou num erro
e revelou sete equações malformadas — `$… = $ const`, com espaço colado à cerca — que no
HTML saíam como cifrões literais e passavam despercebidas. Compilar a apostila é, de
quebra, um teste de integridade do texto.
