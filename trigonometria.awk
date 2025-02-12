#!/usr/bin/awk -f

BEGIN {
    if (ARGC != 4) {
        print "Uso: awk -f trigonometria.awk -- limiteInferior limiteSuperior paso"
        exit 1
    }

    archivo = "tabla.txt"

    # Leer parámetros de entrada
    limiteInferior = +ARGV[1]
    limiteSuperior = +ARGV[2]
    paso = +ARGV[3]
    
    if (paso == 0) {
        print "Error: El paso debe ser diferente de 0."
        exit 1
    }
    if (limiteInferior > limiteSuperior) {
        print "Error: El límite inferior debe ser menor que el superior"
        exit 1
    }
    
    # Se imprimen las cabeceras de la tabla
    printf "%s\t%s\t%s\t%s\n", "x", "sin(x)", "cos(x)", "tan(x)"

    #Se guardan las cabeceras
    printf "%s\t%s\t%s\t%s\n", "x", "sin(x)", "cos(x)", "tan(x)" > archivo
    for (x = limiteInferior; x <= limiteSuperior; x += paso) {
    	if (cos(x) != 0.0) {
     	    	# Generar la siguiente fila
     		linea = sprintf ("%.2f\t%.4f\t%.4f\t%.4f", x, sin(x) , cos(x) , sin(x)/cos(x) )
        } else {
	    	# Control de error: En caso de que la tangente sea indefinida
        	linea = sprintf("%.2f\t%.4f\t%.4f\t%s", x, sin(x) , cos(x) , "Indefinido")
    	}
        print linea
        print linea > archivo
    }
    close(archivo)
    
    # Preguntar al usuario qué función desea graficar
    print "Seleccione la función a graficar: (1) seno, (2) coseno, (3) tangente"
    getline opcion < "/dev/tty"

    if (opcion == "1") {
        funcion = "sin(x)"
        calcular = "sin"
    } else if (opcion == "2") {
        funcion = "cos(x)"
        calcular = "cos"
    } else if (opcion == "3") {
        funcion = "tan(x)"
        calcular = "tan"
    } else {
        print "Opción no válida. Seleccione 1, 2 o 3."
        exit 1
    }

    num_puntos = 0  # Contador de puntos para la gráfica
    max_puntos = 40 # Escala horizontal
    
    for (x = limiteInferior; x <= limiteSuperior; x += paso) {
        if (calcular == "sin") {
            resultado = sin(x)
        } else if (calcular == "cos") {
            resultado = cos(x)
        } else if (calcular == "tan") {
            if (cos(x) == 0) { 
                resultado = "Indefinido"
            } else {
                resultado = sin(x)/cos(x)
            }
        }

        if (resultado != "Indefinido" && resultado != "") {
            valores_x[num_puntos] = x
            valores_funcion[num_puntos] = resultado
            num_puntos++
        }
    }
    

    # Graficar
    print "\nGráfica de " funcion ":\n"

    for (j = max_puntos; j >= -max_puntos; j -= 4) {  # Escala vertical de -1 a 1
        nivel = j / max_puntos  # Normalización entre -1 y 1
        printf("%.1f |", nivel)

        for (i = 0; i < num_puntos; i++) {
            resultado = valores_funcion[i]
            if (resultado != "Indefinido" && resultado+0 == resultado) {
                if (resultado >= nivel && resultado < nivel + 0.1) {
                    printf("*")
                } else {
                    printf(" ")
                }
            }
        }
        print "|"
    }

    # Línea del eje X
    print "      " substr("----------------------------------------------------------------", 1, num_puntos)
}