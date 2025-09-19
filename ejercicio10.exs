defmodule Arbol do
  # Caso base: árbol vacío -> sin rutas
  def rutas(nil, _objetivo), do: []

  # Caso hoja: si coincide el objetivo, devolver lista con esa ruta
  def rutas({:nodo, valor, nil, nil}, objetivo) when valor == objetivo, do: [[valor]]
  def rutas({:nodo, valor, nil, nil}, _objetivo), do: []

  # Caso recursivo: explorar izquierda y derecha
  def rutas({:nodo, valor, izq, der}, objetivo) do
    izq_rutas = for ruta <- rutas(izq, objetivo - valor), do: [valor | ruta]
    der_rutas = for ruta <- rutas(der, objetivo - valor), do: [valor | ruta]
    izq_rutas ++ der_rutas
  end
end
