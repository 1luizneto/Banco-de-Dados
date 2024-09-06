# Bando de Dados

## PROFESSOR (Nome, SNome, Matricula, DataNasc, Sexo, Salario, Matric_Represent_Area, Depto)

### Chave estrangeira referente a DEPARTAMENTO = Depto
### Chave estrangeira referente a PROFESSOR = Matric_represent_area

## DEPARTAMENTO (Nome, Sigla, Codigo, Coordenador)
### Chave estrangeira referente a PROFESSOR = Coordenador

## PROJETO (Nome, Codigo, Depto, Duraçao)
### Chave estrangeira referente a DEPARTAMENTO = Depto

## DEPENDENTE (MatricProf, Nome, RG, Sexo, DataNasc)
### Chave estrangeira referente a PROFESSOR = MatricProf

## EMAIL (MatricProf, Email)

[Universidade SQL.pdf](https://github.com/user-attachments/files/16913735/Universidade.SQL.pdf)
