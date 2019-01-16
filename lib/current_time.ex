defmodule CurrentTime do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/html")
    |> send_resp(200, "Hello world! The time is #{Time.to_string(Time.utc_now())}")
  end
end
