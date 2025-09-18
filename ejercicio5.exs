defmodule Hotel do
  # Caso base: lista vacía -> 0 días
  def total_dias([]), do: 0

  # Caso recursivo: sumar los días de la primera reserva con los demás
  def total_dias([%{dias: d} | reservas]), do: d + total_dias(reservas)
end
