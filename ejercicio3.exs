defmodule Finanzas do
  # Caso base: lista vacía
  def balance([]), do: 0

  # Caso recursivo: suma el primer elemento con el balance del resto
  def balance([x | xs]), do: x + balance(xs)
end
