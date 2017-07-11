defmodule TireLibrary do
  defdelegate search(params), to: TireLibrary.Client
end
