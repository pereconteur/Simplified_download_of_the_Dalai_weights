# Simplified download of the ![Dalai](https://github.com/cocktailpeanut/dalai) weights 
I made this repository to simplify the access to ![Dalai's weight](https://github.com/cocktailpeanut/dalai), allowing to interact with the AI. The installation is done via a bash script.

![macOS](https://img.shields.io/badge/-macOS-%23999999?style=flat-square&logo=macos&logoColor=white) 
![Linux](https://img.shields.io/badge/-Linux-%23FCC624?style=flat-square&logo=linux&logoColor=white)
![Windows](https://img.shields.io/badge/-Windows-%230078D6?style=flat-square&logo=windows&logoColor=white)

### Table of contents

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#how-does-the-bash-script-work">How does the bash script work?</a>
    </li>
    <li>
      <a href="#first-">First 🚀</a>
      <ul>
        <li><a href="#macos">Mac/OS</a></li>
        <li><a href="#">Windows</a></li>
        <li><a href="#">Linux</a></li>
      </ul>
    </li>
    <li><a href="#infos">Infos</a></li>
    <li><a href="#follow-me">Follow ME</a></li>
    <li><a href="#about-the-repo">About the repo</a></li>
  </ol>
</details>


## How does the bash script work?

- First it will check if you have the prerequisites: node.js, npx, homebrew for Mac

- Then it will ask you if you want to have the weights of : llama or alpaca

- Finally you choose the model : 7B, 13B, 30B, 60B

Then it will launch the command provided by Dalai automatically

## First 🚀

```bash
#Get the repo
git clone https://github.com/pereconteur/Simplified_download_of_the_Dalai_weights

#Go to the project directory
cd Simplified_download_of_the_Dalai_weights
```

### Mac/OS

Once you have the folder, run the mac_file.sh file :

```bash
./mac_file.sh
```

### Windows

First, open the Windows PowerShell. 

Then install [chocolatey](https://chocolatey.org/install#individual) (which is a packet manager) by inserting this command into the PowerShell : 

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#Check the version of chocolatey
choco -v
```

Once this is done, install [Git](https://git-scm.com/download/win), and open Git Bash. Enter the following commands in Git Bash !

Go to the repo, and run the wind.sh file :  

```bash
cd to/the/path/Simplified_download_of_the_Dalai_weights

#Run the file
./wind.sh
```

### Linux 


#### Infos

As the models are currently fully loaded into memory, you will need adequate disk space to save them and sufficient RAM to load them. At the moment, memory and disk requirements are the same.

| Model | Original size | Quantized size (4-bit) |
|------:|--------------:|-----------------------:|
|    7B |         13 GB |                 3.9 GB |
|   13B |         24 GB |                 7.8 GB |
|   30B |         60 GB |                19.5 GB |
|   65B |        120 GB |                38.5 GB |



## Follow ME

[![youtube](https://img.shields.io/youtube/channel/subscribers/UC5XJLz-Gnv8_T61wMXu-K-A?label=PereConteur&style=social)](https://www.youtube.com/channel/UC5XJLz-Gnv8_T61wMXu-K-A)

[![Rejoignez notre serveur Discord!](https://img.shields.io/badge/Discord-Join%20our%20server-blue?style=for-the-badge&logo=discord)](https://discord.gg/xY63gyVfaR)


[![twitch](https://img.shields.io/twitch/status/pereconteur?label=PereConteur&style=social)](https://www.twitch.tv/pereconteur)

#### About the repo

 - ![](https://img.shields.io/github/repo-size/pereconteur/Simplified_download_of_the_Dalai_weights)
 - ![](https://img.shields.io/github/last-commit/pereconteur/Simplified_download_of_the_Dalai_weights)
