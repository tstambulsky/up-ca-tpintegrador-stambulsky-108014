

printf "Ingrese opcion ingresando un numero:\n" # This is an inline Bash comment.
printf "1. Pedir un numero entero y mostrar esa cantidad de elementos de la sucesion de Fibonacci.\n\n"
printf "2. Pedir un numero entero y mostrar por pantalla ese numero en forma invertida.\n\n"
printf "3. Pedir una cadena de caracteres y evaluar si es palindromo o no.\n\n"
printf "4. Pedir el path a un archivo de texto y mostrar por pantalla la cantidad de lineas que tiene.\n\n"
printf "5. Pedir el ingreso de 5 numeros enteros y mostrarlos por pantalla en forma ordenada.\n\n"
printf "6. Pedir el path a un directorio y mostrar por pantalla cuantos archivos de cada tipo contiene (No se tenga en cuenta ./ y ../).\n\n"
printf "7. Salir\n\n"
printf "Opcion ingresada: "

read opcion


  case $opcion in
     1)
		printf "Seleccione cantidad de numeros que quiere ver de la escala de fibonnaci: "
		read N
		a=0
		b=1
        for (( i=0; i<N; i++ ))
		do
		    echo -n "$a "
		    fn=$((a + b))
		    a=$b
		    b=$fn
		done
     ;;
     2)
		echo "Ingresa el numero a invertir: "
		read n
		c=0
		while [ $n -gt 0 ]
		do
			a=`expr $n % 10 `
			n=`expr $n / 10 `
			c=`expr $c \* 10 + $a`
		done
		echo $c

     ;;
	3)
		printf "Ingrese numero para ver si es palindromo: "
		read num
		
		# Storing the remainder
		s=0
		
		# Store number in reverse 
		# order
		rev=""
		
		# Store original number 
		# in another variable
		temp=$num
		
		while [ $num -gt 0 ]
		do
			# Get Remainder
			s=$(( $num % 10 ))  
			
			# Get next digit
			num=$(( $num / 10 )) 
			
			# Store previous number and
			# current digit in reverse 
			rev=$( echo ${rev}${s} ) 
		done
		
		if [ $temp -eq $rev ];
		then
			echo "El numero ES palindromo."
		else
			echo "l numero NO ES palindromo."
		fi
	 ;;

	 4)
		printf "Ingrese path de archivo a contar lineas: "
		read path
		wc -l $path > output
		cat output
	 ;;
	 5)
		echo "Ingrese primer numero: "
		read n1
		echo "Ingrese segundo numero: "
		read n2
		echo "Ingrese tercer numero: "
		read n3
		echo "Ingrese cuarto numero: "
		read n4
		echo "Ingrese quinto numero: "
		read n5  

		echo "\n\n\n\n$n1\n$n2\n$n3\n$n4\n$n5" | sort -n 

	 ;;
	 6)
	 ;;
	 7)
	 	echo "Gracias por usar el programa. Saludos!"
	 ;;
     *)
        echo "no sé qué numero es"
     ;;
  esac
