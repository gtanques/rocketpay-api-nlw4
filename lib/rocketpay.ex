defmodule Rocketpay do

  alias Rocketpay.Account.Deposit, as: AccountDeposit
  alias Rocketpay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate deposit(params), to: AccountDeposit, as: :call
end
