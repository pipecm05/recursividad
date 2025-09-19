defmodule Permutaciones do
  # Caso base: la permutación de la lista vacía es [[]]
  def permutaciones([]), do: [[]]

  # Caso recursivo
  def permutaciones(lista) do
    permutaciones_loop(lista, lista)
  end

  defp permutaciones_loop([], _original), do: []
  defp permutaciones_loop([h | t], original) do
    resto = remove_one(original, h)
    # Permutar el resto y anteponer h
    resultado = anteponer(h, permutaciones(resto))
    resultado ++ permutaciones_loop(t, original)
  end

  defp remove_one([h | t], h), do: t
  defp remove_one([x | t], h), do: [x | remove_one(t, h)]
  defp remove_one([], _), do: []

  defp anteponer(_, []), do: []
  defp anteponer(elem, [p | ps]), do: [[elem | p] | anteponer(elem, ps)]
end
