defmodule Warehouse.Inventory.Policy do
  @behaviour Bodyguard.Policy

  def authorize(:delete_product, user, _product), do: user.is_admin

end
