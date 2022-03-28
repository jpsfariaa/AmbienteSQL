--- Parte 01 do Treinamento
SELECT e.nome || ' trabalha para ' || d.nm_departamento
       || ' localizado na cidade ' || l.cidade
       || ' estado ' || l.estado || ' país '
       || p.nm_pais AS "Informação dos Empregados"
FROM tb_empregado e
INNER JOIN tb_departamento d ON (e.id_departamento = d.id_departamento)
INNER JOIN tb_localizacao l ON (d.id_localizacao = l.id_localizacao)
INNER JOIN tb_pais p ON (l.id_pais = p.id_pais)
ORDER BY 1 ASC;

SELECT nome || ' ' || sobrenome  
FROM tb_empregado
WHERE LOWER(nome) LIKE 'e_____e%'
AND id_departamento = 80
OR id_gerente = 148;

SELECT NVL(ger.nome, 'Os Acionistas') || ' gerencia(m) ' || emp.nome
FROM tb_empregado emp
LEFT OUTER JOIN tb_empregado ger ON (emp.id_gerente = ger.id_empregado)
ORDER BY ger.nome DESC;

SELECT ROUND((SYSDATE - data_admissao), 0) AS "Número de Dias Trabalhado"
FROM tb_empregado
WHERE id_departamento = 80
AND ROUND((SYSDATE - data_admissao), 0) > 5000;
