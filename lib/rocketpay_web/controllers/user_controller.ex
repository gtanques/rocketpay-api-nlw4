defmodule RocketpayWeb.UserController do
  use RocketpayWeb, :controller

  alias Rocketpay.User

  alias RocketpayWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Rocketpay.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end
end
