defmodule XaosCloudWeb.PageController do
  use XaosCloudWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
