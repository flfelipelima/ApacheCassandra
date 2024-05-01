![Apache Cassandra: Escalabilidade e Resiliência para Grandes Volumes de Dados](https://raw.githubusercontent.com/flfelipelima/ApacheCassandra/main/acLogo.png)


## Apache Cassandra: Escalabilidade e Resiliência para Grandes Volumes de Dados

O **Apache Cassandra** é um banco de dados distribuído de código aberto, originalmente concebido pelo Facebook e mantido pela **Apache Software Foundation**. Sua arquitetura oferece escalabilidade, resiliência e alta disponibilidade, tornando-o uma escolha popular em cenários que demandam armazenamento e recuperação eficiente de dados.

### Por que Apache Cassandra?

- **Escalabilidade**: Capacidade de lidar com grandes volumes de dados e suportar milhões de consultas por segundo.
- **Resiliência**: Tolerância a falhas, garantindo a continuidade do sistema mesmo diante de problemas em máquinas individuais ou data centers inteiros.
- **Alta disponibilidade**: Ausência de pontos únicos de falha, garantindo acesso contínuo aos dados.

### Amplamente Adotado por Empresas Globais

Empresas de renome, como **Facebook**, **Netflix**, **Uber**, **Instagram**, **Apple** e **eBay**, confiam no Apache Cassandra para suas necessidades de armazenamento e processamento de dados. Desde o armazenamento de metadados de streaming até o gerenciamento de dados em tempo real, o Cassandra é utilizado em uma ampla gama de aplicações.

### Saiba Mais

Visite o site oficial do Apache Cassandra para obter mais informações e recursos: [https://cassandra.apache.org](https://cassandra.apache.org).

## Objetivo
Este repositório tem como objetivo facilitar a instalação do Apache Cassandra, buscando automatizar algumas etapas do processo de instalação e configuração. Mais detalhes podem ser encontrados no README

## Testado
- Windows 10 ✅
- Windows 11 ✅

## INSTALAÇÃO E CONFIGURAÇÃO

***Changelog***
Date: 27/04/2024

**SUMMARY**
1. SAVE THE cassandra-v2 ON C:\
2. RUN Setup.bat
3. WAIT FOR THE END OF INSTALLATION
4. OPEN CMD
5. WRITE C:\Cassandra\apache-cassandra-3.11.10\bin
6. cassandra.bat
7. WAIT FOR THE CONNECTION cassandra.bat
8. MORE ONE cd C:\Cassandra\apache-cassandra-3.11.10\bin
9. cqlsh
10. GOOD JOB!

* INCLUDED pyreadline on install.ps1

--------------------------------
**Preparation for the Installation**
--------------------------------

1. Save the Cassandra-v2 installation files to C:\

*It is important to save the files in C:\ for the settings to work.

----------------------
**Cassandra Installation**
----------------------

ONLY RUN Setup.bat
AND WAIT...

---------
**IMPORTANT**
---------

* JAVA 
For some computers, the JAVA executable will not work. In this change, the jre-8u251-windows-x64.tar file 
is being used to force the installation of this specific version, it is necessary for Apache Cassandra to work.


---
**END**
---

REBOOT THE MACHINE

--------
**VERSIONS**
--------
- apache-cassandra-3.11.10-bin.tar.gz
- jre-8u251-windows-x64.tar.gz
- python-2.7.16.msi

--------------
**HOW TO INITIAL**
--------------

1. Abra o CMD
cd C:\Cassandra\apache-cassandra-3.11.10\bin
cassandra.bat

2. Para que o cqlsh funcione é necessário que o Cassandra esteja em execução
cd C:\Cassandra\apache-cassandra-3.11.10\bin
cqlsh

---

# COMO ATIVAR

`````
cd C:\Cassandra\apache-cassandra-3.11.10\bin\cassandra.bat

Para que o cqlsh funcione é necessário que o Cassandra esteja em execução

cd C:\Cassandra\apache-cassandra-3.11.10\bin\cqlsh
`````

![Apache Cassandra](https://raw.githubusercontent.com/flfelipelima/ApacheCassandra/main/ps1.png)
![Apache Cassandra](https://raw.githubusercontent.com/flfelipelima/ApacheCassandra/main/print.png)


