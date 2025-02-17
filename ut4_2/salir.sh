pkill -f menuPIDS
yad --title="Confirmar accion" --text="¿Estas seguro de salir? " --
button="Aceptar: 0 " --button="Cancelar:1"

if [[ $? == 0 ]];then
	echo "Adios puto"
	exit
else
	echo "ya sabía yo"
	bash menu.sh
fi
