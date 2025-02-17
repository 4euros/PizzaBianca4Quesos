
pid_script=$$

intentos=0
echo -e "Has entrado al script $pid_script"
read -n1 -p "PULSA UNA TECLA "

#-eq es igual
#-lt es mernor que
#-gt mayor q

while [[ true ]]; do
	echo ''
	if [[ $intentos == 11 ]]; then
		echo -e "Intentos superados. fin del programa"
		break
	fi
	read -p "Indica el PID: " user_pid
	if [[ $user_pid == $pid_script ]]; then
		echo -e "Correcto🤯️. Intentos totales: $intentos"
		break
	elif [[ $user_pid < $pid_script ]]; then
		((intentos++))
		echo -e "🥶️El numero correcto es mayor que el que has puesto. Intento numero $intentos"
	elif [[ $user_pid > $pid_script ]]; then
		((intentos++))
		echo -e "🤨️El numero correcto es menor que el que has puesto. Intento numero $intentos."
	fi
done
