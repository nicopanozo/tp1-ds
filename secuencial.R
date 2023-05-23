fib_secuencial <- function(n) {
  if (n < 2) {
    return(n)
  }
  fib <- numeric(n)
  fib[1] <- 0
  fib[2] <- 1
  for (i in 3:n) {
    fib[i] <- fib[i-1] + fib[i-2]
  }
  return(fib[n])
}
# Hacemos lo mismo que el recursivo para imprimir el resultado en consola

# Obtener el argumento de la línea de comando
args <- commandArgs(trailingOnly = TRUE)

# Convertir el argumento de cadena a un número entero
n <- as.integer(args)

# Llamar a la función fibonacci con el argumento n
result <- fib_sequential(n)

# Imprimir el resultado
print(result)

