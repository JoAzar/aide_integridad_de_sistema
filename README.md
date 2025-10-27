# Comprobación de la integridad con AIDE

---

´importante revisar la versión para tocar el aida.conf´

## Insalación de AIDE

apt install aide

## Generar una base de datos inicial

aide --init

## Empezar a utilizar la base de datos

mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz

UNA VEZ QUE TODO ESTÉ CORRECTO SEGUIR CON EL PASO SIGUIENTE

## Iniciar un control manual

aide --check

## Programar la ejecución automática de AIDE

Se puede utilizar cron, agregando la siguiente línea al archivo /etc/crontab

´05 4 * * * root /usr/sbin/aide --check´

## Actualizar AIDE

´aide --update´

## Revisar que todo funcione

´sudo service aide-check start´

## Verificar logs

´ls -l /var/log/aide/´

## Crear directorio de logs si no existe

mkdir -p /var/log/aide
chown root:root /var/log/aide
chmod 700 /var/log/aide

LOS PERMISOS Y LAS CARPETAS SE PUEDEN CAMBIAR OBVIAMENTE

## Excluir directorios no críticos para reducir ruido en los logs:

!/usr/lib/wingpro
!/opt
!/home/usuario/.local

---

Creado por Joel Zalazar
