alias docker.kill='docker ps -a && docker ps -aq | xargs docker rm -f'
alias docker.rmi.dangling='docker images -f "dangling=true" -q | xargs docker rmi && docker images'
alias docker.rm.dead='docker ps --filter status=dead --filter status=exited -aq | xargs docker rm -v'

function docker.compose.upandlog() {
	 docker-compose up -d $1 && docker-compose logs -f $1
}

alias docker.compose.ps="docker-compose ps"
alias docker.compose.log="docker-compose up logs -f"
