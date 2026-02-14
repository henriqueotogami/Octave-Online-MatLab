# Octave-Online-MatLab

> Repositório com scripts de análise de Filtros Passivos e Transformada de Laplace, desenvolvidos no sexto semestre de Engenharia Elétrica, na disciplina de Sinais e Sistemas. Utiliza GNU Octave/MATLAB para processamento de sinais e análise de circuitos.

## 📋 Sobre o Projeto

Este projeto contém uma coleção de scripts em Octave/MATLAB (arquivos `.m`) desenvolvidos como parte do curso de Sinais e Sistemas. Os códigos incluem análises de transformada de Laplace, projeto de filtros elípticos passa-altas, simulação de filtragem de sinais senoidais e análise de circuitos seguidores de tensão com impedâncias complexas.

**Plataforma recomendada:** [Octave Online](https://octave-online.net/) — permite executar os scripts diretamente no navegador, sem necessidade de instalação local.

## 📁 Estrutura do Projeto

### Análise de Laplace (`Objective-C/`)
- **Laplace.m** — Simplificação e cálculo da inversa de Laplace usando funções simbólicas
- **Passa-alta.m** — Projeto e visualização da resposta em frequência de filtro passa-altas elíptico
- **exercicio_2_19_05_2020.m** — Exercício comparando filtragem de sinais em 100 Hz e 250 Hz
- **seguidor_de_tensao.m** — Análise de circuito seguidor de tensão com capacitores e impedâncias
- **corrente_seguidor_tensao.m** — Cálculo de correntes no circuito seguidor de tensão

### Imagens (`Objective-C/images/`)
- **Passa-alta.png** — Gráfico da resposta em frequência do filtro passa-altas
- **octave-online-line-2.png** — Screenshots das simulações no Octave Online

## 📂 Estrutura do repositório

```
LICENSE
README.md
.gitignore
.github/
  FUNDING.yml
Objective-C/
  Laplace.m              # inversa de Laplace simbólica
  Passa-alta.m           # filtro passa-altas elíptico
  exercicio_2_19_05_2020.m  # filtragem de sinais 100Hz e 250Hz
  seguidor_de_tensao.m   # análise de circuito seguidor de tensão
  corrente_seguidor_tensao.m  # correntes no seguidor de tensão
  images/                # imagens dos gráficos gerados
    Passa-alta.png
    octave-online-line-2.png
```

## 🛠️ Tecnologias Utilizadas

- **GNU Octave / MATLAB** — Linguagem e ambiente para computação numérica e processamento de sinais
- **Octave Online** — Ambiente web para execução dos scripts sem instalação
- **Symbolic Package** — Para manipulação simbólica (Laplace, `ilaplace`, `simplify`)

## 📝 Funcionalidades Principais

### Transformada de Laplace
- Cálculo simbólico da transformada inversa de Laplace
- Simplificação de expressões resultantes

### Filtros Passivos e Elípticos
- Projeto de filtro passa-altas elíptico com `ellip()`
- Visualização da resposta em frequência com `freqz()` e `plot()`
- Filtragem de sinais senoidais em diferentes frequências

### Análise de Circuitos
- Cálculo de impedâncias complexas (capacitores em regime AC)
- Análise de circuito seguidor de tensão com dois estágios RC
- Cálculo de correntes e tensões em malhas

## 🚀 Como Executar

### Opção 1: Octave Online (Recomendado)

1. Acesse [https://octave-online.net/](https://octave-online.net/)
2. Copie o conteúdo do arquivo `.m` desejado
3. Cole no editor do Octave Online
4. Execute com o botão **Run** ou atalho correspondente

**Links para testes rápidos:**
- [Passa-alta.m](https://octave-online.net/bucket~FSya2uEDb9Z6L5DC3JQZLG)
- [exercicio_2_19_05_2020.m](https://octave-online.net/bucket~UCGdGn8HYfBnrdY1apd9UL)

### Opção 2: Octave/MATLAB Local

```bash
# Com GNU Octave instalado
octave Objective-C/Laplace.m
octave Objective-C/Passa-alta.m
octave Objective-C/exercicio_2_19_05_2020.m
```

```matlab
% No MATLAB
run('Objective-C/Laplace.m')
run('Objective-C/Passa-alta.m')
run('Objective-C/exercicio_2_19_05_2020.m')
```

**Nota:** Para `Laplace.m`, é necessário o **Symbolic Package** no Octave (`pkg install -forge symbolic`).

## 📚 Conteúdos Abordados

- ✅ Transformada de Laplace e transformada inversa
- ✅ Filtros elípticos passa-altas
- ✅ Resposta em frequência (`freqz`, `ellip`)
- ✅ Processamento de sinais senoidais
- ✅ Impedância complexa e análise de circuitos AC
- ✅ Circuitos seguidores de tensão
- ✅ Visualização com `plot`, `subplot`, `polar`

## ⚙️ Como Funciona

### Laplace.m
Utiliza variáveis simbólicas para:
1. Definir expressão em domínio da frequência (s)
2. Calcular a inversa de Laplace com `ilaplace()`
3. Simplificar o resultado com `simplify()`

### Passa-alta.m
1. Projeta filtro elíptico passa-altas com `ellip(ordem, ripple, atenuação, frequência_normalizada)`
2. Obtém resposta em frequência com `freqz(b, a, 512)`
3. Plota magnitude em função da frequência em Hz

![Filtro Passa Altas Elíptico](https://github.com/henriqueotogami/Octave-Online-MatLab/blob/master/Objective-C/images/Passa-alta.png?raw=true)

### exercicio_2_19_05_2020.m
1. Gera sinais senoidais em 100 Hz e 250 Hz
2. Aplica filtro elíptico com `filter(b, a, x)`
3. Compara sinal original e filtrado em subplots

![Exercício Filtragem](https://github.com/henriqueotogami/Octave-Online-MatLab/blob/master/Objective-C/images/octave-online-line-2.png?raw=true)

### seguidor_de_tensão.m
1. Define parâmetros do circuito (Vi, C1, C2, R1, R2, f)
2. Calcula impedâncias dos capacitores (ZC1, ZC2)
3. Resolve impedância total e correntes nas malhas
4. Utiliza representação polar para facilitar cálculos

![Exercício Octave Online](https://github.com/henriqueotogami/Octave-Online-MatLab/blob/master/Objective-C/images/octave-online-line-2%20(2).png?raw=true)

## 📄 Licença

Este projeto está licenciado sob a MIT License — veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 📖 Referências

- [Octave Online](https://octave-online.net/) — Execução online dos scripts
- [GNU Octave Documentation](https://octave.org/doc/) — Documentação oficial do Octave
- Código-fonte dos scripts em `Objective-C/*.m` — exemplos práticos de processamento de sinais e análise de circuitos

---

### Hashtags
#Octave #MATLAB #SignalsAndSystems #LaplaceTransform #PassiveFilters #ElectricalEngineering #SignalProcessing #EllipticFilter #CircuitAnalysis #OpenSource #GitHub #Engineering #NumericalComputing

### Meta Keywords
```
Octave, MATLAB, transformada de Laplace, filtros passivos, filtro passa-altas,
sinais e sistemas, engenharia elétrica, processamento de sinais, filtro elíptico,
circuito seguidor de tensão, impedância, Octave Online, análise de circuitos,
sexto semestre, código aberto
```
