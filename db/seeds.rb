LISTS = [
  {
    name: "Backlog",
    cards_attributes: [
      {"name" => "Implement Activity Logger" },
      {"name" => "Add Rubocop" }
    ]
  },
  { name: "In Progress"     },
  { name: "For Code Review" },
  { name: "For Testing"     },
  {
    name: "For Release",
    cards_attributes: [
      {"name"=> "Password Reset Facility Update"},
      {"name"=> "Certificate Template CRUD"},
      {"name"=> "Update Rails 5"},
      {"name"=> "Create Manual"},
      {"name"=> "Export to Excel or CSV"}
    ]
  },
  {
    name: "Released",
    cards_attributes: [
      {"name"=> "Model Analysis and ERD"},
      {"name"=> "Department Enhancement"},
      {"name"=> "Logout Options"},
    ]
  },
  { name: "Closed" }
]

def create_lists
  LISTS.each { |list_item| List.create! list_item }
end

if Rails.env.development?
  create_lists
end
