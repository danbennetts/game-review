Game.destroy_all

Genre.destroy_all

Genre.create!([
  {name: "Action"},
  {name: "Action-Adventure"},
  {name: "Adventure"},
  {name: "Role-Playing"},
  {name: "Simulation"},
  {name: "Strategy"},
  {name: "Sports"}
])
