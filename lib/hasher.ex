defmodule Hasher do
  @moduledoc """
  Hasher keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  @doc """
  returns the sha256 on the request body
  """
  def digest(input) do
    :crypto.hash(:sha256, "#{input}")
    |> Base.encode16()
    |> String.downcase()
  end

  @doc """
  returns the hostname
  """
  def hostname do
    :net_adm.localhost()
  end
end
