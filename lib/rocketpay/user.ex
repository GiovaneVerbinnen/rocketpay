defmodule Rocketpay.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key_id {:id, :binary_id, autogenerate: true}
end
