defmodule HasherWeb.HasherController do
  use HasherWeb, :controller

  def index(conn, _params) do
    conn
    |> send_resp(200, "HASHER running on #{Hasher.hostname()}\n")
  end

  def create(conn, _params) do
    # simulate a bit of delay.
    Process.sleep(100)

    # read the request body
    {:ok, body, conn} = conn |> read_body()

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "#{Hasher.digest(body)}")
  end
end
