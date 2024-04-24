# Define o diretório de instalação do Java
$JAVA_INSTALL_DIR = "C:\Program Files\Java\jre1.8.0_251"

# URL para baixar o arquivo do Java 8
$JAVA_URL = "https://drive.usercontent.google.com/download?id=1onqYDgk2MH2VqSSNZdBUfq0SnNUUnZm7&export=download&authuser=0&confirm=t&uuid=595ab004-216d-4992-b499-79292c092c5d&at=APZUnTWZw3lBFWRjT41Gh0McWgSt%3A1713878750894"

# Baixa o arquivo do instalador do Java 8
Write-Host "Baixando o instalador do Java 8..."
Invoke-WebRequest -Uri $JAVA_URL -OutFile "java-installer.exe"

# Define os argumentos para a instalação silenciosa do Java
$installArgs = "/s INSTALLDIR=`"$JAVA_INSTALL_DIR`""

# Instala o Java 8 silenciosamente
Write-Host "Instalando o Java 8 silenciosamente..."
Start-Process -FilePath "java-installer.exe" -ArgumentList $installArgs -Wait

# Configura as variáveis de ambiente
Write-Host "Configurando variáveis de ambiente..."
[Environment]::SetEnvironmentVariable("JAVA_HOME", "$JAVA_INSTALL_DIR", "Machine")

# Configura as variáveis de ambiente para o usuário atual
Write-Host "Configurando variáveis de ambiente para o usuário atual..."
[Environment]::SetEnvironmentVariable("JAVA_HOME", "$JAVA_INSTALL_DIR", "User")

Write-Host "Instalação e configuração concluídas com sucesso."
