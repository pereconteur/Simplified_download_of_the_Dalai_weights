@echo off

set /p choice="Voulez-vous continuer le script ? (Y/N) "
if /i "%choice%" neq "Y" goto exit

REM Vérifier si Python est installé et l'installer si nécessaire
where python >nul 2>&1
if %errorlevel% neq 0 (
  echo "Python n'est pas installé, installation en cours..."
  scoop install python
) else (
  echo "Python est déjà installé"
)

scoop bucket add versions
scoop install nodejs18

REM Vérifier si npm est installé et signaler un problème s'il n'est pas trouvé
where npm >nul 2>&1
if %errorlevel% neq 0 (
  echo "Erreur : npm n'est pas installé, veuillez l'installer"
  goto exit
)

scoop install npm

REM Installer npx avec npm
echo "Installation de npx..."
npm install -g npx
echo "npx a été installé avec succès"

REM Demander le choix de l'utilisateur
echo "First choice :"
echo "1. alpaca"
echo "2. llama"
set /p choice=""

REM Stocker le choix dans une variable
if "%choice%"=="1" set "choix=alpaca"
if "%choice%"=="2" set "choix=llama"
if not defined choix (
  echo "Choix invalide."
  goto exit
)

echo "You have chosen : %choix%"

REM Demander le poids de l'utilisateur
echo "Choose your weight :"
echo "1. 7B"
echo "2. 13B"
echo "3. 30B"
echo "4. 60B"
set /p choiceWeight=""

REM Stocker le choix dans une variable
if "%choiceWeight%"=="1" set "choix2=7B"
if "%choiceWeight%"=="2" set "choix2=13B"
if "%choiceWeight%"=="3" set "choix2=30B"
if "%choiceWeight%"=="4" set "choix2=60B"
if not defined choix2 (
  echo "Choix invalide."
  goto exit
)

echo "You have chosen : %choix2%"

echo "You are about to download the following weights : %choix% %choix2% npx dalai %choix% install %choix2%"

npx dalai %choix% install %choix2%
goto end

:exit
echo "Script interrompu."
exit /b 1

:end