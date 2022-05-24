# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pento.Repo.insert!(%Pento.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Pento.Catalog

products = [
  %{
    name: "Chess",
    description: "The classic strategy game",
    unit_price: 10.0,
    sku: 5_678_910
  },
  %{
    name: "Tic-tac-toe",
    description: "The game of Xs and Os",
    unit_price: 3.0,
    sku: 11_121_314
  },
  %{
    name: "Table tennis",
    description: "Bat the ball back and forth. Don't miss!",
    unit_price: 12.0,
    sku: 15_222_324
  }
]

Enum.each(products fn product ->
  Catalog.create_product(product)
end)
