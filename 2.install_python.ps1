# Define o diretório de instalação do Python
$PYTHON_INSTALL_DIR = "C:\Python27"

# URL para baixar o arquivo do Python 2.7.16
$PYTHON_URL = "https://www.python.org/ftp/python/2.7.16/python-2.7.16.msi"

# Baixa e instala o Python 2.7.x
Write-Host "Instalando Python 2.7.x..."
Invoke-WebRequest -Uri $PYTHON_URL -OutFile "python-2.7.16.msi"
Start-Process msiexec -ArgumentList "/i python-2.7.16.msi /qn /norestart" -Wait

# Configura as variáveis de ambiente
Write-Host "Configurando variáveis de ambiente..."
[Environment]::SetEnvironmentVariable("PYTHON_HOME", "$PYTHON_INSTALL_DIR", "Machine")

Write-Host "Configurando variáveis de ambiente para o usuário atual..."
[Environment]::SetEnvironmentVariable("PYTHON_HOME", "$PYTHON_INSTALL_DIR", "User")

Write-Host "Instalação e configuração concluídas com sucesso."
