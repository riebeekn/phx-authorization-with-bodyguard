defmodule WarehouseWeb.FallbackController do
  use WarehouseWeb, :controller

  def call(conn, {:error, :unauthorized}) do
    conn
    |> put_status(:forbidden)
    |> put_view(WarehouseWeb.ErrorView)
    |> render(:"403")
  end
end
