# Roteiro Moysés → UE 4 (Termodinâmica)

**Função:** concordância entre o fio condutor de sala (Moysés, *Curso de Física Básica* vol. 2,
5ª ed., capítulos 7 a 11) e os 16 tópicos da Parte B do sumário oficial de FIS-2.

**Decisão que este documento registra:** na UE 4, a **ordem de leitura é a do Moysés**; os
tópicos da ementa são **balizas** que dizem *o que* precisa estar coberto, não *quando*. Mesma
decisão da UE 3, tomada pelo professor, e com o mesmo alcance limitado: nada aqui se estende às
UE 1 e 2 sem documento próprio.

**O que NÃO muda:** o nome de cada arquivo continua amarrado ao número do tópico da Parte B
(`4-14-maquinas-termicas-refrigeradores.qmd` é o tópico 4.14), conforme CLAUDE.md §5. Cada
arquivo continua dono exatamente dos seus OE. A cobertura permanece 51/51. Só a ordem de leitura
muda, declarada explicitamente no `contents:` da UE 4 em `_quarto.yml`.

**Escopo da fonte.** O capítulo 7 (Temperatura) entra: os tópicos 4.1 e 4.2 — oito OE, um par de
aulas inteiro — só têm correspondente nele. O capítulo 12 (Noções de mecânica estatística) fica
fora: nenhum OE da UE 4 o alcança.

**Tratamento da fonte.** Vale o Apêndice IV §IV4.1: o texto da nota de aula é **síntese**, não
decalque. Diferentemente da UE 3, aqui a regra existe **antes** da primeira escrita, e é aplicada
em cada fase junto com a compressão do §IV1 R3, não numa passada posterior.

---

## 1. Ordem de leitura da apostila

| # | Arquivo | Tópico Parte B | OE | Moysés |
|---|---|---|---|---|
| 1 | `4-01-temperatura-lei-zero` | 4.1 | 4.1–4.4 | §7.1, §7.2, §7.3, §7.4 |
| 2 | `4-02-dilatacao-termica` | 4.2 | 4.5–4.8 | §7.5 |
| 3 | `4-03-natureza-do-calor` | 4.3 | 4.9–4.11 | §8.1, §8.2(a), §8.3(preâmbulo) |
| 4 | `4-04-quantidade-de-calor` | 4.4 | 4.12–4.14 | §8.2, §8.7(exemplos) |
| 5 | `4-05-conducao-de-calor` | 4.5 | 4.15–4.17 | §8.3 |
| 6 | `4-06-equivalente-mecanico-da-caloria` | 4.6 | 4.18–4.20 | §8.4 |
| 7 | `4-07-primeira-lei` | 4.7 | 4.21–4.24 | §8.5, §8.6, §8.7 |
| 8 | `4-08-equacao-de-estado-gases-ideais` | 4.8 | 4.25–4.27 | §9.1 |
| 9 | `4-09-energia-interna-joule-entalpia` | 4.9 | 4.28–4.30 | §9.2 |
| 10 | `4-10-capacidades-termicas-molares` | 4.10 | 4.31–4.33 | §9.3 |
| 11 | `4-11-processos-adiabaticos` | 4.11 | 4.34–4.36 | §9.4 |
| 12 | `4-12-segunda-lei` | 4.12 | 4.37–4.39 | §10.1, §10.2, §10.3(equivalência) |
| 13 | **`4-14-maquinas-termicas-refrigeradores`** | **4.14** | 4.43–4.45 | §10.3, §10.4, §10.5 |
| 14 | **`4-13-entropia`** | **4.13** | 4.40–4.42 | §10.6, §10.7, §10.8, §10.9 |
| 15 | `4-15-teoria-cinetica` | 4.15 | 4.46–4.48 | §11.1, §11.2, §11.3, §11.4 |
| 16 | `4-16-calores-especificos-equiparticao` | 4.16 | 4.49–4.51 | §11.5 |

**Movimento único: 4.14 sobe uma posição, passando à frente de 4.13.** Nada mais se desloca.

### Por que só um movimento

Ao contrário da UE 3, a ementa da UE 4 já acompanha o Moysés capítulo a capítulo: temperatura,
calor, primeira lei, gases, segunda lei, teoria cinética. A única divergência está no capítulo 10,
e é estrutural.

O Moysés não postula a entropia: ele a **constrói**, e a construção precisa do motor térmico antes:

> enunciados de Clausius e Kelvin (§10.2) → motor térmico e refrigerador, com a equivalência dos
> dois enunciados (§10.3) → **ciclo de Carnot** e o teorema que fixa seu rendimento como máximo
> (§10.4) → escala termodinâmica de temperatura, que nasce do rendimento de Carnot (§10.5) →
> **teorema de Clausius**, obtido decompondo um ciclo qualquer em ciclos de Carnot (§10.6) → a
> integral de Clausius não depende do caminho, **logo existe uma função de estado**: a entropia
> (§10.7)

Na ordem numérica da ementa, a entropia (4.13) viria antes das máquinas (4.14), e o único caminho
restante seria enunciá-la como definição a ser aceita, deixando o ciclo de Carnot como aplicação
posterior de um conceito já dado. Invertendo os dois, a entropia chega como **conclusão** de um
argumento que o aluno acompanhou, e o rendimento de Carnot — que o maquinista usa — é a origem
dela, não um corolário.

O par de aulas não muda: 4.13 e 4.14 já ocupavam ambos o par 37-38.

---

## 2. Concordância seção a seção

Páginas referem-se à numeração do livro (5ª ed.), idêntica à do PDF do extrato de capítulos 7 a 11.

### Capítulo 7 — Temperatura

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 7.1 | Introdução | 192 | — | `4-01` | O que distingue a termodinâmica da mecânica; variáveis macroscópicas como médias de grandezas microscópicas |
| 7.2 | Equilíbrio térmico e a lei zero | 193–194 | — | `4-01` | Parede adiabática × diatérmica; **lei zero** e a transitividade do equilíbrio térmico, que é o que autoriza o termômetro |
| 7.3 | Temperatura | 195–196 | 7.3.1 | `4-01` | Grandeza termométrica; a temperatura como rótulo das isotermas |
| 7.4 | O termômetro de gás a volume constante | 197–199 | 7.4.1–7.4.6 | `4-01` | Ponto triplo da água; escala de gás ideal; por que o gás rarefeito dá termômetro universal |
| 7.5 | Dilatação térmica | 200–204 | 7.5.1–7.5.5 | `4-02` | Coeficiente linear α; superficial 2α e volumétrico 3α (uma linha cada); dilatação anômala da água |
| — | Problemas | 202–204 | — | banco | Fonte de exercícios; **não** publicar (Apêndice Q §Q1) |

### Capítulo 8 — Calor. Primeira lei da termodinâmica

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 8.1 | A natureza do calor | 205–206 | — | `4-03` | Calórico × calor como energia em trânsito; Rumford e o brocamento de canhões |
| 8.2 | Calor transferido | 207–209 | 8.2.1–8.2.4 | `4-04` (+`4-03`) | Caloria; **calor específico** e capacidade térmica; calorimetria. Os parágrafos de abertura, que separam calor de temperatura, servem ao `4-03` |
| 8.3 | Condução de calor | 210–212 | 8.3.1–8.3.6 | `4-05` (+`4-03`) | O preâmbulo de p. 210 nomeia os **três mecanismos** e é a base do `4-03`; o resto é condução: lei de Fourier, condutividade, regime estacionário, isolantes |
| 8.4 | O equivalente mecânico da caloria | 213 | 8.4.1 | `4-06` | Experiência de Joule; 1 cal = 4,186 J |
| 8.5 | A primeira lei da termodinâmica | 214–217 | 8.5.1–8.5.6 | `4-07` | Trabalho num processo; **energia interna como função de estado**; ΔU = Q − W |
| 8.6 | Processos reversíveis | 218–221 | 8.6.1–8.6.4 | `4-07` | Quase-estático × reversível; trabalho como área no diagrama p-V |
| 8.7 | Exemplos de processos | 222–228 | 8.7.1–8.7.8 | `4-07` (+`4-04`) | Isotérmico, isobárico, isocórico, cíclico; **mudança de fase e calor latente** aparecem aqui, como exemplo, e alimentam o `4-04` |
| — | Problemas | 225–228 | — | banco | — |

### Capítulo 9 — Propriedades dos gases

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 9.1 | Equação de estado dos gases ideais | 229–232 | 9.1.1–9.1.13 | `4-08` | Boyle, Charles, Gay-Lussac; mol e número de Avogadro; **pV = nRT** como síntese empírica |
| 9.2 | Energia interna de um gás ideal | 233–237 | 9.2.1–9.2.15 | `4-09` | Expansão livre de **Joule**; expansão **Joule-Thomson** e o efeito de estrangulamento; U = U(T); **entalpia** (p. 237, um parágrafo) |
| 9.3 | Capacidades térmicas molares de um gás ideal | 238–239 | 9.3.1–9.3.9 | `4-10` | c_V e c_P; **relação de Mayer** c_P = c_V + R; razão γ |
| 9.4 | Processos adiabáticos num gás ideal | 240–247 | 9.4.1–9.4.15 | `4-11` | **Equação de Poisson** pV^γ = const; adiabática × isoterma no diagrama; velocidade do som como aplicação |
| — | Problemas | 245–247 | — | banco | — |

### Capítulo 10 — A segunda lei da termodinâmica

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 10.1 | Introdução | 248–249 | — | `4-12` | A assimetria que a primeira lei não captura: processos permitidos pela conservação que não ocorrem |
| 10.2 | Enunciados de Clausius e Kelvin | 250–251 | 10.2.1 | `4-12` | Os dois enunciados; impossibilidade do móvel perpétuo de segunda espécie |
| 10.3 | Motor térmico. Refrigerador. Equivalência | 252–254 | 10.3.1–10.3.5 | `4-12` (equivalência) + `4-14` (máquinas) | Rendimento η; refrigerador e eficácia; **a demonstração de que os dois enunciados são equivalentes** fecha o `4-12`; as definições de máquina e refrigerador abrem o `4-14` |
| 10.4 | O ciclo de Carnot | 255–258 | 10.4.1–10.4.6 | `4-14` | As quatro etapas; **teorema de Carnot**: nenhum motor entre dois reservatórios supera o de Carnot |
| 10.5 | A escala termodinâmica de temperatura | 259–262 | 10.5.1–10.5.13 | `4-14` (fecho) | A escala definida pelo rendimento de Carnot, independente da substância; coincide com a de gás ideal; **zero absoluto** |
| 10.6 | O teorema de Clausius | 263–266 | 10.6.1–10.6.11 | `4-13` | Ciclo qualquer decomposto em ciclos de Carnot; ∮δQ/T ≤ 0 |
| 10.7 | Entropia. Processos reversíveis | 267–272 | 10.7.1–10.7.29 | `4-13` | A integral não depende do caminho, **logo S é função de estado**; ΔS em processos reversíveis; diagrama T-S |
| 10.8 | Variação de entropia em processos irreversíveis | 273–275 | 10.8.1–10.8.8 | `4-13` | Cálculo por caminho reversível auxiliar; expansão livre; condução entre reservatórios |
| 10.9 | O princípio do aumento da entropia | 276–283 | 10.9.1–10.9.14 | `4-13` (fecho) | ΔS_universo ≥ 0; degradação de energia; a seta do tempo enunciada, sem a estatística do cap. 12 |
| — | Problemas | 280–283 | — | banco | Inclui o **ciclo Diesel** (Problema 10.9, p. 282) e o ciclo Otto — ver §3 |

### Capítulo 11 — Teoria cinética dos gases

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 11.1 | A teoria atômica da matéria | 284–288 | 11.1.1 | `4-15` | Percurso histórico até o átomo; ordens de grandeza moleculares |
| 11.2 | A teoria cinética dos gases | 289 | — | `4-15` | As hipóteses do modelo |
| 11.3 | Teoria cinética da pressão | 290–293 | 11.3.1–11.3.16 | `4-15` | **Pressão como fluxo de momento**; p = (1/3)ρ⟨v²⟩ |
| 11.4 | A lei dos gases perfeitos | 294–299 | 11.4.1–11.4.24 | `4-15` | pV = NkT deduzida do modelo; **temperatura como medida da energia cinética média**; velocidade quadrática média |
| 11.5 | Calores específicos e equipartição da energia | 300–305 | 11.5.1–11.5.19 | `4-16` | **Teorema da equipartição**; graus de liberdade; γ por tipo de molécula; congelamento dos graus de liberdade com a temperatura |
| 11.6 | Livre percurso médio | 306–309 | 11.6.1–11.6.14 | — | **Fora da ementa** — ver §4 |
| 11.7 | Gases reais. Equação de Van der Waals | 310–319 | 11.7.1–11.7.16 | — | **Fora da ementa** — ver §4 |
| — | Problemas | 318–319 | — | banco | — |

---

## 3. Balizas da ementa sem correspondente no Moysés

Estes conteúdos são exigidos pelos OE mas não existem, ou existem só em nível de menção, nos
capítulos 7 a 11. São escritos a partir da literatura padrão de engenharia naval e de
termodinâmica aplicada, **em continuidade com o texto do Moysés ao redor** — sem marcação de
origem no corpo da nota de aula. Este quadro é o registro da procedência.

Ordenados por tamanho do vazio.

| # | Conteúdo | OE | Arquivo | O que o Moysés dá | O que falta escrever |
|---|---|---|---|---|---|
| 1 | **Ciclos reais: Otto, Diesel, Rankine, Brayton** | 4.44, 4.45 | `4-14` | Nada no corpo do texto. O ciclo Diesel aparece **só no Problema 10.9** (p. 282) e o Otto só em problema; Rankine e Brayton **não ocorrem no livro** | O bloco inteiro. É o maior vazio da unidade e o mais naval de todos: motor diesel de propulsão, caldeira e turbina a vapor, turbina a gás. Rendimento de cada ciclo, comparação com Carnot entre as mesmas temperaturas, e de onde vem a diferença |
| 2 | **Refrigeração: ciclo de compressão de vapor, COP, bomba de calor** | 4.43 | `4-14` | §10.3 define o refrigerador como máquina de Carnot invertida e dá a eficácia; "coeficiente de desempenho" só aparece em problema (p. 280) | O ciclo real de compressão de vapor (compressor, condensador, válvula, evaporador), COP de refrigeração e de bomba de calor, e a aplicação de bordo: câmaras frigoríficas e ar-condicionado |
| 3 | **Convecção e radiação em nível operacional** | 4.11 | `4-03`, `4-05` | Exatamente **uma página** (p. 210), qualitativa, como preâmbulo da condução. Nomeia os três mecanismos e para aí | Lei de resfriamento de Newton e coeficiente de película; Stefan-Boltzmann e emissividade; trocadores de calor de bordo. O nível B2 do OE 4.11 se satisfaz com pouco, mas o `4-05` precisa do quantitativo |
| 4 | **Condutividade térmica de materiais navais** | 4.17 | `4-05` | A lei de Fourier e a noção de condutividade (§8.3), com exemplos genéricos | Tabela de k para aço naval, isolamento de tubulação, lã de rocha, incrustação; parede composta e resistência térmica em série. O OE é B4 (analisar), e analisar exige os números |
| 5 | **Calor latente como seção** | 4.14 | `4-04` | Mudança de fase tratada como **exemplo** em §8.7 (p. 223–227), não como seção | Seção própria: calor latente de fusão e de vaporização, diagrama de mudança de fase, e o caso de bordo — evaporador de água doce, condensador principal |
| 6 | **Dilatação superficial e volumétrica desenvolvidas** | 4.5, 4.6 | `4-02` | **Uma linha** (p. 201): "o coeficiente de dilatação superficial é 2α" | A dedução dos três coeficientes e a relação entre eles, mais os efeitos em estruturas: juntas de dilatação de tubulação de vapor, folga de mancal, tanque de carga aquecido |
| 7 | **Entalpia desenvolvida** | 4.30 | `4-09` | **Um parágrafo** (p. 237), dentro do Joule-Thomson | H = U + pV como função de estado, por que ela é a grandeza natural em processos a pressão constante, e o uso em bordo: balanço de caldeira e tabelas de vapor |

Nenhum desses conteúdos inventa física. Onde faltar dado de fonte confiável — valor de k, COP
típico, rendimento de ciclo real — vale a regra geral: marcar `[VERIFICAR]`, nunca arbitrar.

---

## 4. Conteúdo do Moysés fora da ementa

Duas seções dos capítulos 7 a 11 não têm OE que as receba. Ficam **fora da apostila**, e o
registro aqui é para que uma leitura futura não as tome por esquecimento:

| § | Título | Por que fica fora |
|---|---|---|
| 11.6 | Livre percurso médio | Nenhum OE da UE 4 alcança transporte em gases, difusão ou viscosidade de gás. O conceito seria pré-requisito de mecânica estatística, que não é ministrada |
| 11.7 | Gases reais. Equação de Van der Waals | A ementa fecha em gás ideal e equipartição. O gás real teria lugar natural depois do `4-16`, mas não há OE, e acrescentá-lo abriria a unidade sem baliza |

O capítulo 12 inteiro (Noções de mecânica estatística) está fora do escopo da fonte, como
declarado na abertura.

Duas seções entram **partidas** entre dois arquivos, e isso é deliberado:

1. **§8.2 e §8.3 servem a dois tópicos cada.** O preâmbulo de §8.2 separa calor de temperatura
   (OE 4.10, no `4-03`) e o corpo dá a calorimetria (OE 4.12–4.13, no `4-04`). O preâmbulo de
   §8.3 nomeia os três mecanismos (OE 4.11, no `4-03`) e o corpo é a condução (OE 4.15–4.17, no
   `4-05`). Em ambos os casos o nível de tratamento difere: o `4-03` fica no qualitativo, o
   quantitativo pertence ao tópico seguinte.
2. **§10.3 é o ponto de costura entre 4.12 e 4.14.** A demonstração de equivalência dos
   enunciados de Clausius e Kelvin fecha a segunda lei no `4-12`; as definições de motor térmico
   e refrigerador, com rendimento e eficácia, abrem o `4-14`.

---

## 5. Invariantes preservados

- Nomes de arquivo = número do tópico da Parte B (CLAUDE.md §5).
- Bloco de comentário `OBJETIVOS DESTE TÓPICO` no topo de cada arquivo: intocável.
- Cobertura 51/51 dos OE, cada um citado uma vez, ancorado num cabeçalho `##` via `{{< ra >}}`.
- Códigos Bloom de `_docs/FIS_2_RA.md`.
- Navalização existente, problemas SP, "Erros clássicos", "Onde o fenômeno vive" e as simulações
  p5.js com sua paridade matplotlib.
- Registro do Apêndice IV, já aplicado à unidade — e o §IV4.1 daqui em diante, em cada fase.
- Provas, blueprints e banco Dokion continuam fora do Quarto (Apêndice Q §Q1) — os problemas dos
  capítulos 7 a 11 alimentam o banco, não a apostila.

---

## 6. Badges de aula e cronograma

A inversão 4.14 ↔ 4.13 acontece **dentro** de um mesmo par de aulas, de modo que nenhum badge
muda e o cronograma do `index.qmd` só troca a ordem dos nomes na linha 37-38:

| Par | Tópicos |
|---|---|
| 31-32 | 4.1, 4.2, 4.3, 4.4 |
| 33-34 | 4.5, 4.6, 4.7, 4.8, 4.9 |
| 35-36 | 4.10, 4.11 |
| 37-38 | 4.12, **4.14, 4.13** |
| 39-40 | 4.15, 4.16 |

---

## 7. Pendências abertas (fora do escopo desta reordenação)

- A UE 4 tem 22 h-aula expositivas = 11 pares (Apêndice II §II1), mas os badges cobrem 5 pares. A
  compressão é global, não específica da UE 4, e é a mesma pendência registrada para a UE 3.
- `_quarto.yml` não declara `format: pdf`, exigido pelo CLAUDE.md §5. Pendência herdada.
- Densidade: a UE 4 tem 16 tópicos e 14 806 palavras de prosa, 925 por tópico, contra 3 158 da
  UE 3. A reescrita a partir da fonte faz a unidade **crescer**, ao contrário da UE 3, que foi
  reescrita e depois comprimida. O §IV1 R3 não se aplica como meta de redução aqui.

---

## 8. Registro de escopo e de tratamento da fonte

**Escopo.** A UE 4 é a segunda unidade a receber concordância, por decisão do professor, depois da
UE 3. As UE 1 e 2 seguem a ordem numérica do sumário; nada aqui se aplica a elas.

**Capítulos.** 7 a 11. O capítulo 7 entra porque os tópicos 4.1 e 4.2 dependem inteiramente dele.

**Tratamento da fonte.** Apêndice IV §IV4.1, aplicado desde a primeira escrita: o Moysés dá a
ordem, o fio condutor e os resultados, não a redação. Títulos de seção que sejam nomes consagrados
do assunto (lei zero, ciclo de Carnot, teorema de Clausius, relação de Mayer) são legítimos e não
contam como decalque.
