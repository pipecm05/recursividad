defmodule Numeros do
  # Caso base: lista vacía
  def suma_pares([]), do: 0

  # Caso recursivo: si el primer número es par, lo sumamos
  def suma_pares([x | xs]) when rem(x, 2) == 0, do: x + suma_pares(xs)

  # Caso recursivo: si no es par, seguimos con la cola
  def suma_pares([_ | xs]), do: suma_pares(xs)
end
