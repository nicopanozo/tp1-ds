  if (n < 2) {
    return(n)
  } else {
    return(fib_recursivo(n-1) + fib_recursivo(n-2))
  }
}
# Le pedimos a chatGPT que nos ayude a imprimir el resultado

# Obtener el argumento de la línea de comando
args <- commandArgs(trailingOnly = TRUE)

# Convertir el argumento de cadena a un número entero
n <- as.integer(args)

# Llamar a la función fibonacci con el argumento n
result <- fib_recursivo(n)

# Imprimir result
print(result)

