defmodule TireLibraby.API do
  use HTTPoison.Base

  alias TireLibrary.Config

  @doc """
  Start the API
  """
  @spec start_link :: :ok
  def start_link do
    :ignore
  end

  def process_url(url) do
    Config.url <> url
  end

  def process_request_headers(headers) do
    Dict.put(headers, :"X-API-KEY", Config.api_key)
  end

  def process_response_body(body) do
    body |> IO.iodata_to_binary |> JSX.decode
    |> Enum.map fn ({k, v}) -> { String.to_atom(k), v } end
    |> :orddict.from_list
  end
end
