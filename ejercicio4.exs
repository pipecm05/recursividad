defmodule Recursion do
  # Caso base: lista vacía -> no se encontró
  def buscar(_, []), do: false

  # Caso: el primer elemento es el que buscamos
  def buscar(elem, [elem | _]), do: true

  # Caso recursivo: seguir buscando en la cola
  def buscar(elem, [_ | cola]), do: buscar(elem, cola)
end
