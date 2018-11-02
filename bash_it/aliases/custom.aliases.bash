alias dev='cd ~/dev'
alias repos='cd ~/dev/github_repos'

alias dlc='docker ps -l'  # List last Docker container
alias dlcid='docker ps -l -q'  # List last Docker container ID
alias dlcip='docker inspect -f "{{.NetworkSettings.IPAddress}}" $(docker ps -l -q)'  # Get IP of last Docker container
alias dps='docker ps'  # List running Docker containers
alias dpsa='docker ps -a'  # List all Docker containers
alias di='docker images'  # List Docker images
alias drmac='docker rm $(docker ps -a -q)'  # Delete all Docker containers
alias drmlc='docker-remove-most-recent-container'  # Delete most recent (i.e., last) Docker container
alias drmui='docker images -q -f dangling=true | xargs docker rmi'  # Delete all untagged Docker images
alias drmli='docker-remove-most-recent-image'  # Delete most recent (i.e., last) Docker image
alias dideps='docker-image-dependencies'  # Output a graph of image dependencies using Graphiz
alias dre='docker-runtime-environment'  # List environmental variables of the supplied image ID
alias delc='docker exec -it ' # Enter last container (works with Docker 1.3 and above)
alias drm='docker rm'
alias drmi='docker rmi'
alias dcu='docker-compose up -d'  #
alias dcb='docker-compose build'
alias dch='docker-compose stop'  #
alias dcs='docker-compose start -d'  #
alias dcl='docker-compose logs'
alias dm='docker-machine'  #
alias dmc='docker-machine create --driver=parallels '
alias dmc2='docker-machine create --driver=parallels --parallels-cpu-count=2 --parallels-memory=2048 '
alias dms='docker-machine start'  #
alias dme='docker-machine env'  #
