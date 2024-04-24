# Define o diretório de instalação do Java
$JAVA_INSTALL_DIR = "C:\Program Files\Java\jre1.8.0_251"

# Define o diretório de instalação do Python
$PYTHON_INSTALL_DIR = "C:\Python27"

# Define o diretório de instalação do Cassandra
$CASSANDRA_INSTALL_DIR = "C:\Cassandra"

# Configura as variáveis de ambiente para a máquina
Write-Host "Configurando variáveis de ambiente para a máquina..."
[Environment]::SetEnvironmentVariable("JAVA_HOME", "$JAVA_INSTALL_DIR", "Machine")
[Environment]::SetEnvironmentVariable("PYTHON_HOME", "$PYTHON_INSTALL_DIR", "Machine")
[Environment]::SetEnvironmentVariable("PATH", "$CASSANDRA_INSTALL_DIR\apache-cassandra-3.11.16\bin;$JAVA_INSTALL_DIR\bin;$PYTHON_INSTALL_DIR;$env:PATH", "Machine")

# Configura as variáveis de ambiente para o usuário atual
Write-Host "Configurando variáveis de ambiente para o usuário atual..."
[Environment]::SetEnvironmentVariable("JAVA_HOME", "$JAVA_INSTALL_DIR", "User")
[Environment]::SetEnvironmentVariable("PYTHON_HOME", "$PYTHON_INSTALL_DIR", "User")

Write-Host "Instalação e configuração concluídas com sucesso."


# Adiciona o diretório do Cassandra ao PATH nas variáveis de ambiente do usuário
$userPath = [Environment]::GetEnvironmentVariable("PATH", "User")
if ($userPath -eq $null) {
    $userPath = ""
}
if (-not $userPath.Contains("$CASSANDRA_INSTALL_DIR\apache-cassandra-3.11.16\bin")) {
    $userPath += ";$CASSANDRA_INSTALL_DIR\apache-cassandra-3.11.16\bin"
    [Environment]::SetEnvironmentVariable("PATH", $userPath, "User")
}