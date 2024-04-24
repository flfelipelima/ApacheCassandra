# INSTALAÇÃO E CONFIGURAÇÃO (IMPORTANTE SEGUIR ESSA ORDEM)

1. 1.install_java #baixa automaticamente o java jre-8u251-windows-x64.exe
2. 2.install_python #baixa automaticamente o python 2.7.16
3. 3.install_cassandra #baixa e instala automaticamente o Cassandra (apache-cassandra-3.11.10) em C:\
4. 4.config_variaveis #configura as variáveis automaticamente (COMO ADMINISTRADOR)

OBS.: USAR O POWERSHELL COMO ADMINISTRADOR PARA AUTOMATIZAR TODAS AS CONFIGURAÇÕES.

VERSÕES
apache-cassandra-3.11.10-bin.tar.gz
jre-8u251-windows-x64.exe
python-2.7.16.msi

----------------------------------------------------------------------------------------------------------------------------------

# EDITAR O CASSANDRA .YAML (Localizado em: C:\Cassandra\apache-cassandra-3.11.10\conf)

PROCURAR POR (CTRL + F):
start_rpc - se estiver false, mudar para true.
enable_user_defined_functions - se estiver false, mudar para true.
enable_scripted_user_defined_functions - se estiver false, mudar para true.

OBS.: Arquivo .YAML já configurado na pasta, só copiar e colar no diretório acima.

----------------------------------------------------------------------------------------------------------------------------------

# COMO ATIVAR

1. Cassandra - Ativar primeiro
C:\Users\Felipe Lima>cd C:\Cassandra\apache-cassandra-3.11.10\bin
C:\Cassandra\apache-cassandra-3.11.10\bin>cassandra.bat

2. Para que o cqlsh funcione é necessário que o Cassandra esteja em execução
C:\Users\Felipe Lima>cd C:\Cassandra\apache-cassandra-3.11.10\bin
C:\Cassandra\apache-cassandra-3.11.10\bin>cqlsh

