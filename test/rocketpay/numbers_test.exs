defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there  is a file with the given name, returns the sum of numbers " do
      response = Numbers.sum_from_file("numbers")

      expect_response = {:ok, %{result: 62}}

      assert response == expect_response
    end

    test "when there  is a file with the given name, returns an error " do
      response = Numbers.sum_from_file("banana")

      expect_response = {:error, %{message: "Invalid file!"}}

      assert response == expect_response
    end
  end
end
