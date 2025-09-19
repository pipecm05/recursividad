defmodule Potencia do
  # Caso base: cualquier número ^ 0 = 1
  def potencia(_, 0), do: 1

  # Caso recursivo: base^exp = base * base^(exp-1)
  def potencia(base, exp), do: base * potencia(base, exp - 1)
end
