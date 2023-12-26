#!/bin/bash
echo
echo "Se van a ejecutar una seria de comandos con el fin de familiarizarnos con el manejo de imágenes de Singularity"
echo

echo "Hostname en ibsen"
echo

hostname 

echo
echo "Hostname en el contenedor"
echo

singularity exec singularity/my-python.sif hostname 

echo 
echo "Ya se ha visto el hostname, ahora vamos con otro comando"
echo

echo "cat en ibsen"
echo
cat /etc/os-release

echo
echo "cat en el contenedor"
echo
singularity exec singularity/my-python.sif cat /etc/os-release

echo
echo "pwd en ibsen"
echo

pwd

echo
echo "pwd en el contenedor"
echo

singularity exec singularity/my-python.sif pwd 

echo
echo "ls en ibsen"
echo 

ls -l /home

echo
echo "ls en el contenedor"
echo
singularity exec singularity/my-python.sif ls -l /home

echo
echo "version de Python en ibsen"
echo

python --version

echo
echo "version de Python en el contenedor"
echo 

singularity exec singularity/my-python.sif python --version

echo
echo "Calculo de pi con el archivo que tengo en ibsen"
echo

singularity exec singularity/my-python.sif ipython source/pi-solution-reducida-alumno12.ipynb 100000

echo 
echo "Calculo de pi con el archivo que hay dentro del contenedor"
echo

singularity exec singularity/my-python.sif ipython /app/pi.ipynb 100000

echo 
echo "Ya se han ejecutado todos los comandos en ambos lugares"
echo 

