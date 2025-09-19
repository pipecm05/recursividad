defmodule Tienda do
  # Caso base: lista vacía -> total 0
  def total_pedidos([]), do: 0

  # Caso recursivo: sumar la cantidad de la primera orden con las demás
  def total_pedidos([%{cantidad: c} | pedidos]), do: c + total_pedidos(pedidos)
end
