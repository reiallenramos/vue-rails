LISTS = [
  {
    name: "Backlog",
    cards_attributes: [
      {"name" => "Add RSpec"   },
      {"name" => "Add Rubocop" }
    ]
  },
  { name: "In Progress"     },
  { name: "For Code Review" },
  { name: "For Testing"     },
  { name: "For Release"     },
  { name: "Released"        },
  { name: "Closed"          }
]

def create_lists
  LISTS.each { |list_item| List.create! list_item }
end

if Rails.env.development?
  create_lists
end
