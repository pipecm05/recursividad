defmodule Contador do
  # una lista vacia tiene 0 elementos
  def contar([]) do #caso base
    0
  end

  # la lista tiene cabeza (h) y cola (t), 1 elemento (la cabeza) + lo que cuente en la cola)
  def contar([_h | t]) do
    1 + contar(t) #caso recursivo
  end
end
