

# Exercício 

Trabalhando com o dataset versão final após as transformações feitas durante as aulas neste capítulo, crie instruções SQL que resolvam às questões abaixo:

1-Aplique label encoding à variável menopausa.

2-[Desafio] Crie uma nova coluna chamada posicao_tumorconcatenando as colunas inv_nodese quadrante.

3-[Desafio] Aplique One-Hot-Encoding à coluna deg_malig.

4-Crie um novo datasetcom todas as variáveis após as transformações anteriores

# Item 1:

SELECT * 
FROM cap02.TB_NAVIOS 
WHERE pontuacao_risco = 310;


# Item 2

SELECT * 
FROM cap02.TB_NAVIOS 
WHERE classificacao_risco = 'A'
  AND indice_conformidade >= 95;


# Item 3

SELECT * 
FROM cap02.TB_NAVIOS 
WHERE classificacao_risco = 'C' OR classificacao_risco = 'D'
  AND indice_conformidade <= 95;

SELECT * 
FROM cap02.TB_NAVIOS 
WHERE classificacao_risco IN ('C','D')
  AND indice_conformidade <= 95;


# Item 4

SELECT * 
FROM cap02.TB_NAVIOS 
WHERE classificacao_risco = 'A' 
   OR pontuacao_risco = 0;


# Item 5

SELECT * 
FROM cap02.TB_NAVIOS 
WHERE temporada LIKE '%Dezembro 2016';


