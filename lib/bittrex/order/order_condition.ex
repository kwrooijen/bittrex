defmodule Bittrex.Order.OrderCondition do
  alias Bittrex.Order.OrderCondition

  defstruct [:name, :value]

  def new(%{IsConditional: true} = order) do
    %OrderCondition{
      name: order["Condition"],
      value: order["ConditionTarget"]
    }
  end

  def new(_order), do: nil
end
