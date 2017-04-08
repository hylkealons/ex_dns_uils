defmodule DnsUtils do
  @moduledoc """
  Documentation for DnsUtils.
  """

  @doc """
  Checks if a domain exists. Returns true if it exists
  ## Examples

      iex> DnsUtils.domain_exists?("google.nl")
      true
  """
  def domain_exists?(domain) do
    System.cmd("nslookup", [domain])
        |> elem(0)
        |> String.contains?("server can't find " <> domain)
        |> Kernel.!
  end
end
