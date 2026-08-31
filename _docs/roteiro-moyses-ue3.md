# Roteiro Moysés → UE 3 (Mecânica dos Fluidos)

**Função:** concordância entre o fio condutor de sala (Moysés, *Curso de Física Básica* vol. 2,
capítulos 1 e 2) e os 8 tópicos da Parte B do sumário oficial de FIS-2.

**Decisão que este documento registra:** na UE 3, a **ordem de leitura é a do Moysés**; os
tópicos da ementa são **balizas** que dizem *o que* precisa estar coberto, não *quando*. Os
tópicos da ementa sem correspondente no Moysés são posicionados no ponto em que o
encadeamento pede.

**O que NÃO muda:** o nome de cada arquivo continua amarrado ao número do tópico da Parte B
(`3-07-sustentacao.qmd` é o tópico 3.7), conforme CLAUDE.md §5. Cada arquivo continua dono
exatamente dos seus OE. A cobertura permanece 33/33. Só a ordem de leitura muda, declarada
explicitamente no `contents:` da UE 3 em `_quarto.yml`.

---

## 1. Ordem de leitura da apostila

| # | Arquivo | Tópico Parte B | OE | Moysés |
|---|---|---|---|---|
| 1 | `3-01-propriedades-dos-fluidos` | 3.1 | 3.1–3.4 | §1.1, §1.2 |
| 2 | `3-02-fluidos-em-repouso-pascal-arquimedes` | 3.2 | 3.5–3.8 | §1.3, §1.4, §1.5, §1.6 (+§1.7) |
| 3 | `3-03-fluidos-em-movimento-continuidade-bernoulli` | 3.3 | 3.9–3.12 | §2.1, §2.2, §2.3, §2.4, §2.5 |
| 4 | `3-08-kutta-joukowski` | 3.8 | 3.30–3.33 | §2.6(a), §2.6(b), §2.6(d) |
| 5 | `3-07-sustentacao` | 3.7 | 3.26–3.29 | §2.6(c), §2.6(e) |
| 6 | `3-04-escoamento-reynolds-navier-stokes-camada-limite` | 3.4 | 3.13–3.17 | §2.7(a), §2.7(b), §2.7(c) |
| 7 | `3-06-arrasto` | 3.6 | 3.22–3.25 | §2.7(c) — parte final |
| 8 | `3-05-analise-dimensional-buckingham` | 3.5 | 3.18–3.21 | — |

Movimentos em relação à ordem numérica: **3.8 sobe 4 posições**, **3.7 sobe 2**, **3.4 desce 2**,
**3.5 desce 3**.

### Por que esta ordem

O Moysés desenvolve o capítulo 2 inteiro sob a hipótese de **fluido perfeito** (§2.3), tira dela
tudo o que ela dá — continuidade, Bernoulli, circulação, sustentação da asa — e só então mostra
que ela falha:

> fluido perfeito → circulação (§2.6a) → sustentação do aerofólio (§2.6c) →
> **paradoxo de d'Alembert: um fluido perfeito não oferece resistência nenhuma** (§2.6e) →
> logo a hipótese está errada → viscosidade (§2.7a) → camada limite (§2.7c) →
> descolamento e esteira → *aí sim* o arrasto existe e é ∝ v²

Na ordem numérica da ementa esse arco se desmonta: arrasto (3.6) seria ensinado antes de
sustentação (3.7), e a circulação (3.8) — que é a ferramenta com que o Moysés explica a
sustentação — só apareceria depois de ambos.

---

## 2. Concordância seção a seção

Páginas referem-se ao PDF do extrato (cap. 1 e 2, 48 páginas).

### Capítulo 1 — Estática dos fluidos

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 1.1 | Propriedades dos fluidos | 1–2 | — | `3-01` | Tensão normal × tangencial; sólido resiste à *deformação*, fluido à *taxa* de deformação; fluido em equilíbrio não suporta tensão tangencial; viscosidade em nível qualitativo |
| 1.2 | Pressão num fluido | 2–5 | 1.2.1–1.2.8 | `3-01` | Meio contínuo; "infinitésimo físico"; densidade (1.2.1); **isotropia da pressão** |
| 1.3 | Equilíbrio num campo de forças | 5–7 | 1.3.1–1.3.9 | `3-02` | Densidade de força **f**; equilíbrio do cilindro elementar → **grad p = f** |
| 1.4 | Fluido incompressível no campo gravitacional | 7–9 | 1.4.1–1.4.12 | `3-02` | *p = −u + const*; **lei de Stevin** como caso particular; superfícies equipotenciais; paradoxo hidrostático |
| 1.5(a) | Princípio de Pascal | 9–10 | — | `3-02` | Enunciado + prensa hidráulica na citação de Pascal (1663) |
| 1.5(b) | Vasos comunicantes | 10 | — | `3-02` | — |
| 1.5(c) | Pressão atmosférica. Manômetros | 10–11 | 1.5.1 | `3-02` | Torricelli; manômetro de tubo aberto |
| 1.6 | Princípio de Arquimedes | 11–14 | 1.6.1–1.6.2 | `3-02` | Empuxo por **integração das pressões** no cilindro; depois o **princípio de solidificação** de Stevin (1586); centro de empuxo |
| 1.6′ | — Equilíbrio dos corpos flutuantes | 13–14 | — | `3-02` | **Metacentro M** e o critério M acima/abaixo de G; **paradoxo hidrostático** e sua explicação pela pesagem do líquido. Subseção de §1.6, não numerada |
| 1.7 | Pressão atmosférica × altitude | 14–16 | 1.7.1–1.7.4 | `3-02` (extensão) | Fórmula barométrica. Fora da ementa da UE 3; entra como fecho do cap. 1 e ponte para a UE 4 |
| — | Problemas | 16–19 | — | banco | Fonte de exercícios; **não** publicar (Apêndice Q §Q1) |

### Capítulo 2 — Noções de hidrodinâmica

| § | Título | Págs. | Eqs. | Destino | Conteúdo-chave |
|---|---|---|---|---|---|
| 2.1 | Métodos de descrição e regimes de escoamento | 20–22 | 2.1.1–2.1.2 | `3-03` | **Lagrange × Euler**; linhas de corrente; regime estacionário; laminar × turbulento |
| 2.2 | Conservação da massa — equação de continuidade | 22–24 | 2.2.1–2.2.8 | `3-03` | Continuidade em forma integral e diferencial |
| 2.3 | Forças num fluido em movimento | 24–25 | 2.3.1–2.3.5 | `3-03` | 2ª lei de Newton no elemento; viscosidade como força volumétrica interna; define **fluido perfeito** |
| 2.4 | Equação de Bernoulli | 25–28 | 2.4.1–2.4.8 | `3-03` | Bernoulli por trabalho-energia ao longo do tubo de corrente |
| 2.5(a) | Fórmula de Torricelli | 28–29 | 2.5.1 | `3-03` | — |
| 2.5(b) | Tubo de Pitot | 29–30 | 2.5.2–2.5.4 | `3-03` | Ponto de estagnação; pressão dinâmica |
| 2.5(c) | Fenômeno de Venturi | 30–31 | 2.5.5–2.5.7 | `3-03` | — |
| 2.6(a) | Circulação | 31–33 | 2.6.1–2.6.8 | `3-08` | Definição; propriedade aditiva |
| 2.6(b) | Escoamentos rotacionais e irrotacionais | 33–35 | 2.6.9–2.6.13 | `3-08` | Circulação por unidade de área; vórtice; linha singular |
| 2.6(c) | Efeito Magnus | 35–37 | — | `3-07` | Cilindro girante; **empuxo dinâmico**; **Flettner (1920)**; aerofólio, ângulo de ataque, sustentação via Bernoulli/Venturi |
| 2.6(d) | Conservação da circulação. Vórtices | 37–38 | 2.6.14–2.6.15 | `3-08` | **Teorema de Thomson (Kelvin, 1869)**; filete de vórtice; anel de vórtice |
| 2.6(e) | Crítica da hidrodinâmica clássica | 38 | — | `3-07` (fecho) | **Paradoxo de d'Alembert**; "hidrodinâmica da água seca" (von Neumann). É a ponte para o item 6 da ordem de leitura |
| 2.7(a) | Definição da viscosidade | 38–40 | 2.7.1–2.7.3 | `3-04` | Tensão tangencial e coeficiente η; condição de não-deslizamento na parede |
| 2.7(b) | A lei de Hagen-Poiseuille | 40–43 | 2.7.4–2.7.6 | `3-04` | Perfil parabólico; vazão ∝ R⁴; medida de η |
| 2.7(c) | O número de Reynolds | 43–44 | 2.7.7 | `3-04` + `3-06` | **Re deduzido como razão inércia/atrito** (não decorado); camada limite de Prandtl (1904); transição → `3-04`. Descolamento, esteira de vórtices, resistência ∝ ηv e ∝ v², forma aerodinâmica → `3-06` |
| 2.7(–) | Aplicação à biologia | 44 | — | `3-04` | Re de peixe (~10⁵) × bactéria (~10⁻⁵) |
| — | Problemas | 45–48 | — | banco | Fonte de exercícios; **não** publicar |

---

## 3. Balizas da ementa sem correspondente no Moysés

Estes conteúdos são exigidos pelos OE mas não existem nos capítulos 1 e 2. São escritos a
partir da literatura padrão, **em continuidade com o texto do Moysés ao redor** — sem marcação
de origem no corpo da nota de aula. Este quadro é o registro da procedência.

| Conteúdo | OE | Arquivo | Posição escolhida e justificativa |
|---|---|---|---|
| Tensão superficial e capilaridade | 3.3 | `3-01` | Fecha a lista de propriedades da Parte B (que nomeia as quatro). O Moysés usa "tensão" só no sentido de força/área |
| Equação de Navier-Stokes | 3.15 | `3-04` | Logo após §2.7(a): é a forma geral da equação que o Moysés monta em §2.3 e depois trunca para fluido perfeito. Entra como generalização, com o passo formal em callout recolhível |
| Coeficiente de arrasto $C_d$ | 3.24 | `3-06` | Imediatamente após a lei ∝ v² do §2.7(c) — é a adimensionalização dela |
| Equação da sustentação com $C_L$, estol | 3.28, 3.29 | `3-07` | Após §2.6(c): quantifica o empuxo dinâmico que o Moysés descreve qualitativamente |
| Teorema de Kutta-Joukowski, $L' = \rho v \Gamma$ | 3.31 | `3-08` | Após §2.6(b): o Moysés constrói toda a circulação e o empuxo dinâmico sem enunciar o teorema. É o fecho formal do que ele deixa implícito |
| Análise dimensional, Buckingham, Froude, semelhança | 3.18–3.21 | `3-05` | Último tópico da unidade. O aluno já viu Re nascer de uma razão de forças (§2.7.7 é um argumento de escala) e já viu $C_d$ e a lei do $v^2$; Buckingham generaliza, Froude entra como o adimensional que faltava, e a unidade fecha no tanque de provas e na previsão de potência — que é também o fecho naval mais forte |

---

## 4. Desvios declarados em relação à ordem literal do Moysés

Dois, ambos deliberados:

1. **§2.6(d) é lido antes de §2.6(c).** O Moysés faz (a) circulação → (b) rotacional/irrotacional
   → (c) Magnus → (d) conservação da circulação e vórtices. Como (a), (b) e (d) são todos teoria
   da circulação e os OE 3.30–3.33 vivem todos no arquivo `3-08`, os três são agrupados e (c)
   Magnus fica no `3-07`. Efeito: teoria completa primeiro, aplicação depois.
2. **§2.6(e) fecha o `3-07`, não abre o `3-06`.** O paradoxo de d'Alembert é, no Moysés, a ponte
   para a viscosidade. Na ordem de leitura o `3-07` é o último tópico sob a hipótese de fluido
   perfeito, então é dele que a ponte sai. O `3-06` reabre citando o paradoxo para resolvê-lo.

Um caso de conteúdo repartido, também deliberado:

3. **Viscosidade aparece duas vezes, em níveis diferentes.** O Moysés a introduz
   qualitativamente em §1.1 ("resistência que depende da taxa de variação espacial da velocidade
   relativa de deslizamento") e a formaliza só em §2.7(a). O OE 3.4 vive no tópico 3.1 da ementa.
   Solução: o `3-01` trata a viscosidade no nível de §1.1 e §2.3 — o que distingue fluido real de
   perfeito; o `3-04` traz a definição quantitativa (η, tensão tangencial, Hagen-Poiseuille) na
   posição do §2.7(a). Nenhum OE fica descoberto e nenhuma definição é antecipada.

---

## 5. Invariantes preservados

- Nomes de arquivo = número do tópico da Parte B (CLAUDE.md §5).
- Bloco de comentário `OBJETIVOS DESTE TÓPICO` no topo de cada arquivo: intocável.
- Cobertura 33/33 dos OE, cada um citado uma vez, ancorado num cabeçalho `##` via `{{< ra >}}`.
- Códigos Bloom de `_docs/FIS_2_RA.md`.
- Navalização existente, problemas SP, "Erros clássicos", "Onde o fenômeno vive" e as 8
  simulações p5.js com sua paridade matplotlib.
- Provas, blueprints e banco Dokion continuam fora do Quarto (Apêndice Q §Q1) — os problemas
  dos capítulos 1 e 2 alimentam o banco, não a apostila.

## 6. Pendências abertas (fora do escopo desta reordenação)

- Os `{{< aula >}}` da UE 3 ainda estão distribuídos na ordem numérica antiga; serão
  redistribuídos na fase final.
- A linha da UE 3 no cronograma do `index.qmd` ainda lista os OE em ordem numérica.
- A UE 3 tem 16 h-aula expositivas + 4 práticas = 10 pares (Apêndice II §II1), mas os badges
  cobrem 5 pares e as 4 h-aula práticas não têm contrapartida.
- `_quarto.yml` não declara `format: pdf`, exigido pelo CLAUDE.md §5.
