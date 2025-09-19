defmodule Matriz do
  # Caso base: matriz vacía
  def suma_matriz([]), do: 0

  # Caso recursivo: suma la primera fila y luego el resto de la matriz
  def suma_matriz([fila | resto]), do: suma_fila(fila) + suma_matriz(resto)

  # Función auxiliar: suma los elementos de una fila
  defp suma_fila([]), do: 0
  defp suma_fila([x | xs]), do: x + suma_fila(xs)
end
