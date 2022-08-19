defmodule PentoWeb.HomeLive do
  use PentoWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>You're in!</h1>
    <h2>What page would you like to see first?</h2>
    <ul>
      <li><a href="/guess">Number Guessing Game</a></li>
      <li><a href="/game/medium">Pentominoes Game</a></li>
      <li><a href="/products">Products</a></li>
      <li><a href="/survey"> Products Survey</a></li>
      <li><a href="/admin-dashboard">Dashboard With Survey Results</a></li>
      <li><a href="/promo">Promo Code</a></li>
    </ul>
    """
  end
end
