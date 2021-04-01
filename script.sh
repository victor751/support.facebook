
#!/usr/bin/env bash

## CORES DA TABELA ASCII

VERM="$(printf '\033[31m')"
VERD="$(printf '\033[32m')"
LARA="$(printf '\033[33m')"
AZUL="$(printf '\033[34m')"
ROSA="$(printf '\033[35m')"
CEAN="$(printf '\033[36m')"
BRAN="$(printf '\033[37m')"

VERM2="$(printf '\033[41m')"

###################################

## BANNER

banner() {
	cat <<- EOF
		${VERD} _   _    _    ____ _  _____ _   _  ____
		${VERD}| | | |  / \  / ___| |/ /_ _| \ | |/ ___|
		${VERD}| |_| | / _ \| |   | ' / | ||  \| | |  _
		${VERD}|  _  |/ ___ \ |___| . \ | || |\  | |_| |
		${VERD}|_| |_/_/   \_\____|_|\_\___|_| \_|\____|
		${VERD} 				${VERM}Versão: 2.0
		${AZUL}[ - ] Script Criado Por Victor Silva ${BRAN}
	EOF
}

####################################

## SEGUNDO BANNER

small_banner() {
	cat <<- EOF
	${VERD}█                    █        █
	${VERD}█                    █
	${VERD}█                    █
	${VERD}█▒██▒  ░███░   ▓██▒  █  ▒█  ███    █▒██▒   ██▓█
	${VERD}█▓ ▒█  █▒ ▒█  ▓█  ▓  █ ▒█     █    █▓ ▒█  █▓ ▓█
	${VERD}█   █      █  █░     █▒█      █    █   █  █   █
	${VERD}█   █  ▒████  █      ██▓      █    █   █  █   █
	${VERD}█   █  █▒  █  █░     █░█░     █    █   █  █   █
	${VERD}█   █  █░ ▓█  ▓█  ▓  █ ░█     █    █   █  █▓ ▓█
	${VERD}█   █  ▒██▒█   ▓██▒  █  ▒█  █████  █   █   ██▒█
	${VERD}                                              █
	${VERD}                                           ▓ ▒█
	${VERD}                                           ▒██░
	EOF
}
${BRAN}
######################################

##MENSAGEM DE SAIDA

msg_saida() {
	{ clear; small_banner; echo ; }
	cat <<- EOF
		${VERM2}${BRAN}Obrigado Por Usar Esse Script, Tenha Um Ótimo Dia ^_^

	EOF
}

#####################################

##MENU PRINCIPAL

menu() {
	{ clear; banner; echo; }
	cat <<- EOF

		${VERM}[${BRAN}::${VERM}]${VERD} Qual Script Você Quer Instalar:

		${VERM}[${BRAN} 01 ${VERM}]${ROSA} TBomb         ${VERM}[${BRAN} 06 ${VERM}]${ROSA} Nexphisher      ${VERM}[${BRAN} 11 ${VERM}]${ROSA} InstaHack
		${VERM}[${BRAN} 02 ${VERM}]${ROSA} Zphisher      ${VERM}[${BRAN} 07 ${VERM}]${ROSA} Bomber          ${VERM}[${BRAN} 12 ${VERM}]${ROSA} Snoop
		${VERM}[${BRAN} 03 ${VERM}]${ROSA} IP_Tracer     ${VERM}[${BRAN} 08 ${VERM}]${ROSA} Infect          ${VERM}[${BRAN} 13 ${VERM}]${ROSA} Bombers
		${VERM}[${BRAN} 04 ${VERM}]${ROSA} Hacktronian   ${VERM}[${BRAN} 09 ${VERM}]${ROSA} Termux-Style    ${VERM}[${BRAN} 14 ${VERM}]${ROSA} Easy_Hack
		${VERM}[${BRAN} 05 ${VERM}]${ROSA} Metasploit    ${VERM}[${BRAN} 10 ${VERM}]${ROSA} T-Load          ${VERM}[${BRAN} 15 ${VERM}]${ROSA} Impulse

		${VERM}[${BRAN} 00 ${VERM}]${ROSA} Sair          ${VERM}[${BRAN} 99 ${VERM}]${ROSA} Sobre

	EOF

	read -p "${VERM}[${BRAN}::${VERM}]${VERD} Selecione A Opção: ${ROSA}"

	if [[ "$REPLY" == "01" || "$REPLY" == "1" ]]; then
		git clone https://github.com/TheSpeedX/TBomb.git
	elif [[ "$REPLY" == "02" || "$REPLY" == "2" ]]; then
		git clone git://github.com/htr-tech/zphisher.git
	elif [[ "$REPLY" == "03" || "$REPLY" == "3" ]]; then
		git clone https://github.com/rajkumardusad/IP-Tracer.git
	elif [[ "$REPLY" == "04" || "$REPLY" == "4" ]]; then
		git clone https://github.com/thehackingsage/hacktronian.git
	elif [[ "$REPLY" == "05" || "$REPLY" == "5" ]]; then
		wget https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
	elif [[ "$REPLY" == "06" || "$REPLY" == "6" ]]; then
		git clone git://github.com/htr-tech/nexphisher.git
	elif [[ "$REPLY" == "07" || "$REPLY" == "7" ]]; then
		git clone https://github.com/bhattsameer/Bombers
	elif [[ "$REPLY" == "08" || "$REPLY" == "8" ]]; then
		git clone https://github.com/noob-hackers/infect
	elif [[ "$REPLY" == "09" || "$REPLY" == "9" ]]; then
		git clone https://github.com/darkwarrior3/termuxstyling
	elif [[ "$REPLY" == "10" ]]; then
		git clone https://github.com/noob-hackers/T-LOAD
	elif [[ "$REPLY" == "00" || "REPLY" == "0" ]]; then
		msg_saida
	elif [[ "$REPLY" == "99" ]]; then
		echo oie
	fi
}
#######################################

menu
