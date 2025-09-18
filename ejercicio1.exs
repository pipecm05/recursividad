defmodule FActorial do
  def factorial(n) when n < 0, do: "Error: el número no puede ser negativo"
  def factorial(0), do: 1                         # Caso base
  def factorial(n), do: n * factorial(n - 1)      # Caso recursivo
end
