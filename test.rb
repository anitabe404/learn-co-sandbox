contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"]  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}
puts contacts
jon_snow = contacts["Jon Snow"]
jons_fave_ice_cream = jon_snow[:favorite_ice_cream_flavors]
jons_fave_ice_cream << "mint chip"

puts jons_fave_ice_cream
puts contacts
contacts["Jon Snow"][:address] = "123 Fake St."

puts contacts