# ApacheCassandra
Este repositório tem como objetivo facilitar a instalação do Apache Cassandra, buscando automatizar algumas etapas do processo de instalação e configuração. Mais detalhes podem ser encontrados no README

# INSTALAÇÃO E CONFIGURAÇÃO (IMPORTANTE SEGUIR ESSA ORDEM)

1. `install_java` - baixa automaticamente o java jre-8u251-windows-x64.exe
2. `install_python` - baixa automaticamente o python 2.7.16
3. `install_cassandra` - baixa e instala automaticamente o Cassandra (apache-cassandra-3.11.10) em C:\
4. `config_variaveis` - configura as variáveis automaticamente (COMO ADMINISTRADOR)

OBS.: USAR O POWERSHELL COMO ADMINISTRADOR PARA AUTOMATIZAR TODAS AS CONFIGURAÇÕES.

VERSÕES
- apache-cassandra-3.11.10-bin.tar.gz
- jre-8u251-windows-x64.exe
- python-2.7.16.msi

---

# EDITAR O CASSANDRA .YAML (Localizado em: C:\Cassandra\apache-cassandra-3.11.10\conf)

PROCURAR POR (CTRL + F):
- `start_rpc` - se estiver false, mudar para true.
- `enable_user_defined_functions` - se estiver false, mudar para true.
- `enable_scripted_user_defined_functions` - se estiver false, mudar para true.

OBS.: Arquivo .YAML já configurado na pasta, só copiar e colar no diretório acima.

---

# COMO ATIVAR

`````
cd C:\Cassandra\apache-cassandra-3.11.10\bin\cassandra.bat

Para que o cqlsh funcione é necessário que o Cassandra esteja em execução

cd C:\Cassandra\apache-cassandra-3.11.10\bin\cqlsh
`````


![Apache Cassandra](https://raw.githubusercontent.com/flfelipelima/ApacheCassandra/main/print.png)
