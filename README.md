# 🌀 Gráficas trigonometétricas con AWK

Integrantes:

- Eduardo Hincapie 
- Josh Lopez 
- Miguel Suarez 
- Alejandra Vargas

Se realiza un codigo en lenguaje awk con el propósito de gráficar las funciones trigonométricas de seno, coseno y tangente, sin la facilidad de utilizar librerias dinámicas. Se evalua la capacidad para crear soluciones y la manera correcta del uso de awk para casos específicos.

Como solución se implementa un código en awk, en el cuál podemos definir el valor mínimo y máximo de x, y además el usuario selecciona el valor del paso entre el rango seleccionado.



# 🧷 Requerimientos necesarios

Para correr el programa creado se necesita tener instalado **AWK**, el cual se encuentra previamente en sistemas Linux / macOs.

Además para la mejor visualización de los datos, se requiere de **GNUPlot**.

### Proceso de instalación de GNUPlot: 

### Linux
```
sudo apt install gnuplot
```



### macOs
Instalar homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Instalar gnuplot
```
brew install gnuplot
```



# ⚡Como usarlo

### Creación de datos

1. Entrar directamente a la terminal y ubicar la carpeta en donde se encuentra el archivo awk
2. Para correr un archivo en awk se utiliza el comando:

```
awk -f nombre_archivo.awk argumentos
```

En este caso el comando utilizado es:
```
awk -f trigonometria.awk -- limiteInferior limiteSuperior paso
```

### Creación de gráfica por medio de GNUPlot

Abrir GNUPlot
```
gnuplot
```

Ingresar a la posición donde esta el arhivo txt
- Verificar ubicación actual
```
pwd
```
- Entrar a la carpeta
```
cd 'Name'
```

Ya que la primera columna de nuestra tabla de datos son los nombres de las variables, debemos indicarle al programa que esta fila no son datos numericos, esto por medio del siguiente comando:
```
set key autotitle columnhead
```

Gráficar los datos del archivo txt (en este caso llamado "tabla.txt")
```
plot "tabla.txt"
```

Debido a que tenemos más de una columna (seno, coseno, tangente), debemos seleccionar la grafica deseada:

- Seno
```
plot "tabla.txt" using 1:2
```

- Coseno
```
plot "tabla.txt" using 1:3
```

- Tangente
```
plot "tabla.txt" using 1:4
```

Comandos adicionales para preferencia de graficación:
- Unir los puntos con lineas
```
plot "name.txt" using 1:2 with lines
```

- Gráficar más de una columna
```
plot "name.txt" using 1:2, "name.txt" using 1:3, ...
```

- Nombre del eje x
```
set xlabel "Name"
```

- Nombre del eje y
```
set ylabel "Name"
```

- Nombre de la gráfica
```
set title "Name"
```

- Volver a gráficar
```
replot
```

- Guardar como imagen png
```
set terminal png
set output "name.png"
replot
```

- Descartar configuración png
```
unset output
```

![tangente](https://github.com/user-attachments/assets/fe354ec9-3366-4d55-ba1f-0c95df170c3f)
![seno](https://github.com/user-attachments/assets/a241b61b-0a4d-4aec-9ccb-443afae1b53c)
![coseno](https://github.com/user-attachments/assets/b2253059-c222-402b-a974-ba40ca2b0f22)

