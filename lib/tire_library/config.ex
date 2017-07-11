defmodule TireLibrary.Config do

  @type value :: String.t
  
  def url do :: value
    Application.fetch_env(:tire_library, :url)
  end

  def api_key do :: value
    Application.fetch_env!(:tire_library, :api_key)
  end

  def version do :: value
    Application.fetch_env!(:tire_library, :version)
  end
end
