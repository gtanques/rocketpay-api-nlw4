defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns the sum of numbers" do
      reponse = Numbers.sum_from_file("numbers")

      expected_reponse = {:ok, %{result: 37}}

      assert reponse == expected_reponse
    end

    test "when there is no file with the given name, returns error" do
      reponse = Numbers.sum_from_file("banana")

      expected_reponse = {:error, %{message: "Invalid file"}}

      assert reponse == expected_reponse
    end
  end
end
