export EDITOR='/usr/bin/vim'
export CLIENTES="abacos dentalvix capixaba psicovix psicovva felixporto pedrosa ilha sosecal staana"
export XDG_MUSIC_DIR='/data/music'

#[ -x ${HOME}/bin/ssh_agent.sh ] && source ${HOME}/bin/ssh_agent.sh

alias ll="ls -lahF"
alias virsh="sudo /usr/bin/virsh"
alias ports="sudo netstat -ntlup"
alias tm="sudo tail -vf /var/log/syslog"
alias meuip="curl http://meuip.thinkit.srv.br"
alias whois="whois -H"

# todo.txt-cli
alias t="todo.sh -n -a -c -t"

# Docker Aliases

alias dpull="docker pull"
alias dl="docker ps -l -q"

function sqle() { 
    local foo="$*"
    db=`echo $foo | cut -d\  -f1`
    sql=`echo $foo | cut -d\  -f2-`
    
    echo $sql | mysql $db 
}
function c() { 
    local foo="$*"
    echo $foo | bc -l 
}
function ff() { local foo="$*"; find . -type f -iname "*${foo}*"; }
function fd() { local foo="$*"; find . -type d -iname "*${foo}*"; }

function ssd() { local foo="$*"; find . -maxdepth 1 -type d -iname "*${foo}*" -exec du -sh {} \;; }

# vim60: syntax=sh
