defmodule RocketpayWeb.UserViewTest do
  use RocketpayWeb.ConnCase

  import Phoenix.View

  alias Rocketpay.{Account, User}
  alias RocketpayWeb.UserView

  test "renders create.json" do
    params = %{
      name: "Naruto",
      password: "123456",
      nickname: "9caldas",
      email: "naruto@gmail.com",
      age: 20
    }

    {:ok, %User{id: user_id, account: %Account{id: account_id}} = user} =
      Rocketpay.create_user(params)

    response = render(UserView, "create.json", user: user)

    expected_response = %{
      message: "User created",
      user: %{
        account: %{balance: Decimal.new("0.00"), id: account_id},
        id: user_id,
        name: "Naruto",
        nickname: "9caldas"
      }
    }

    assert expected_response == response
  end
end
