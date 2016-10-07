defmodule :ejabberd_auth_custom do
  @behaviour :ejabberd_auth

  def start(_) do
    Ejabberd.Logger.info("Starting custom auth module")
  end

  def check_password(_, _, _, _), do: false
  def check_password(_, _, _, _, _, _), do: false
  def dirty_get_registered_users(), do: []
  def get_password(_, _), do: nil
  def get_password_s(_, _), do: nil
  def get_vh_registered_users(_), do: []
  def get_vh_registered_users_number(_), do: 0
  def get_vh_registered_users(_, _), do: []
  def get_vh_registered_users_number(_, _), do: 0
  def is_user_exists(_, _), do: false
  def plain_password_required(), do: true
  def remove_user(_, _), do: nil
  def remove_user(_, _, _), do: nil
  def set_password(_, _, _), do: nil
  def store_type(), do: :external
  def try_register(_, _, _), do: nil
end
