# 🌀 AWK-trigonometria

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

Proceso de instalación de GNUPlot: 

**Linux**
```
sudo apt install gnuplot
```

**macOs**
Install homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install gnuplot

```
brew install gnuplot
```

# ⚡Como usarlo

1. Entrar directamente a la terminal y ubicar la carpeta en donde se encuentra el archivo awk
2. Para correr un archivo en awk se utiliza el comando:
   
    ```sh
    awk -f nombre_archivo.awk argumentos
    ```
    
   En este caso el comando utilizado es:
   
   ```
   awk -f trigonometria.awk -- limiteInferior limiteSuperior paso
   ```
