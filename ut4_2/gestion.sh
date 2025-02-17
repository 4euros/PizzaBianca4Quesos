export GDK_BACKEND=x11

nombre_proceso=$1
echo "El nombre del proceso es: $nombre_proceso"

pidof $nombre_proceso
if [[ $? == 0 ]];then
	#si es un 0 es que el programa fue iniciado
	pkill -f $nombre_proceso
	./ 
	bash menu.sh
else
	$nombre_proceso
fi
	
