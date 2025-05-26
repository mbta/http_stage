defmodule HttpStage.Parser do
  @moduledoc """
  Behaviour for parsers that can be used with HttpStage.

  A parser is responsible for converting data received from an HTTP response into the format expected by consumers of the HttpStage.
  """

  @doc """
  Parses the given data.

  The data can be of any type, and the implementation should handle converting it to the desired output format.

  ## Parameters
    * `data` - The response data to parse, can be of any type.

  ## Returns
    * The parsed data in the desired format.
  """
  @callback parse(data :: term()) :: term()
end
