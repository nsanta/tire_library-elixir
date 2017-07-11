defmodule TireLibrary.Client do

  @moduledoc """
  Documentation for TireLibrary.
  """
  alias TireLibrary.{Config, API}

  @type url :: String.t | List.t
  @type type :: String.t
  @type query :: String.t
  @type params :: HastDict.t
  @type relative_path :: String.t
  @type response :: {Atom.t, HTTPoison.AsyncResponse.t}

  def search(%{:type => type, :query => query, :page => page} = params) do :: response
    API.get(
      self.build_path(["search", type]),
      query: %{q: query , page: page},
      stream_to: self
    )
  end

  defp build_path(url :: String.t) do :: relative_path
    [Config.version, url] |> Enum.join("/")
  end

  defp build_path(url :: List.t) do :: relative_path
    [Config.version | url] |> Enum.join("/")
  end
end
