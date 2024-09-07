## PROJETO UNIVERSIDADE SQL

Tomando como base os esquemas de relação do Banco de Dados representado abaixo, realize as consultas a seguir:

### Esquemas de Relação

**PROFESSOR** (*Nome, SNome, Matricula, DataNasc, Sexo, Salario, Matric_Represent_Area, Depto*) 

Chave estrangeira referente a DEPARTAMENTO = Depto 
Chave estrangeira referente a PROFESSOR = Matric_represent_area 


**DEPARTAMENTO** (*Nome, Sigla, Codigo, Coordenador*)  

Chave estrangeira referente a PROFESSOR = Coordenador 

**PROJETO** (*Nome, Codigo, Depto, Duração*)  

Chave estrangeira referente a DEPARTAMENTO = Depto 

**DEPENDENTE** (*MatricProf, Nome, RG, Sexo, DataNasc*) 

Chave estrangeira referente a PROFESSOR = MatricProf

**EMAIL** (*MatricProf, Email*)



### Consultas

1. **Exiba o nome, o RG e a data de nascimento de todos os dependentes do sexo feminino.**

2. **Relacione em ordem decrescente os (diferentes) salários dos professores da instituição.**

3. **Atualize o nome do projeto “Aplicações BD” para “Aplicações de Big Data”.**

4. **Exiba a matrícula e o nome dos professores que nasceram a partir de 1970, ordenados pelo nome em ordem ascendente.**

5. **Exiba em ordem decrescente da data de nascimento todos os dados dos professores que nasceram na década de 80 e que têm Pereira no sobrenome.**

6. **Exiba o nome, sobrenome e matrícula dos professores que são representantes de área.**

7. **Exiba o nome e a data de nascimento do dependente mais jovem.**

8. **Exibir a matrícula e o nome de todas as professoras que tenham Maria em qualquer parte do nome ordenados pelo nome em ordem decrescente.**

9. **Exiba nome, sobrenome dos empregados cuja segunda letra do nome é “O” e tenha “Campos” no sobrenome.**

10. **Para cada departamento, exiba o código do departamento e a quantidade de projetos lá alocados.**

11. **Exiba o nome e o código dos departamentos que têm mais de 2 professores nele lotados.**

12. **Selecione o nome, o sobrenome e a matrícula dos professores que trabalham no Departamento de Tecnologia em Telemática.**

13. **Exiba o e-mail do professor cujo nome é João Carlos.**

14. **Exiba o nome do(a) coordenador(a) do Departamento de Engenharia de Computação.**

15. **Exiba os nomes dos professores que não têm dependentes.**
