# Definir o URL para baixar o Apache Cassandra
$CASSANDRA_URL = "https://archive.apache.org/dist/cassandra/3.11.10/apache-cassandra-3.11.10-bin.tar.gz"

# Definir o diretório de instalação do Cassandra
$CASSANDRA_INSTALL_DIR = "C:\Cassandra"

# Verificar se o 7-Zip está instalado
if (-not (Test-Path "C:\Program Files\7-Zip\7z.exe")) {
    # Baixar e instalar o 7-Zip
    Write-Host "Baixando e instalando o 7-Zip..."
    $7ZipInstaller = "7z1900-x64.exe"
    Invoke-WebRequest -Uri "https://www.7-zip.org/a/$7ZipInstaller" -OutFile "$env:TEMP\$7ZipInstaller"
    Start-Process -FilePath "$env:TEMP\$7ZipInstaller" -ArgumentList "/S" -Wait
}
# Baixar o Apache Cassandra
Write-Host "Baixando o Apache Cassandra..."
Invoke-WebRequest -Uri $CASSANDRA_URL -OutFile "$env:TEMP\apache-cassandra-3.11.10-bin.tar.gz"

# Extrair os arquivos do Cassandra usando o 7-Zip
Write-Host "Extraindo o Apache Cassandra..."
& "C:\Program Files\7-Zip\7z.exe" x "$env:TEMP\apache-cassandra-3.11.10-bin.tar.gz" "-o$CASSANDRA_INSTALL_DIR" -aoa
& "C:\Program Files\7-Zip\7z.exe" x "$env:C:\cassandra\apache-cassandra-3.11.10-bin.tar" "-o$CASSANDRA_INSTALL_DIR" -aoa

Write-Host "Instalação e configuração concluídas com sucesso."
