# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding DB..."

Proposal.delete_all
Project.delete_all
User.delete_all



User.create!(
  email: "user@agency.test",
  password: "password",
  agency: true,
  business_name: 'Agency Company'
)

User.create!(
  email: "user@client.test",
  password: "password",
  agency: false,
  business_name: 'Client Company'
)

puts "DB has now #{User.count} users."



Project.create!(
  business: User.last,
  budget: 8000,
  tags: "shoes, fashion, accessories.",
  name: "ninet",
  difficulty: "low",
  description: "We are interested in marketing our high-end shoes and getting them to our audience.",
  duration: "6 months",
  goal: "Our goal is to offer a different perspective on how shoe are designed and worn.",
  target_audience: "Our target audience are males & females below the age of 30, we aim to build high quality products that also match their active lifestyle.",
  info: "They need to know about the uniqueness of our design. We seek to make shoe designs that have never been made before. Largely because other companies did not invest as much in shoe moulds.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  season: "Winter",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  non_profit: "No.",
  current_metrics: true,
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing",
  )

Project.create!(
  business: User.last,
  budget: 100000,
  tags: "software, tech, IT, fast-growing.",
  name: "softrepo",
  difficulty: "high",
  description: "We are an established company looking to increasing our user base.",
  duration: "8 months",
  goal: "Our goal is to build a visual software management platform that is more user-friendly than existing ones.",
  target_audience: "Our target audience are males & females below the age of 30, we aim to build high quality products that also match their active lifestyle.",
  info: "They need to know about the uniqueness of our design. We seek to make shoe designs that have never been made before. Largely because other companies did not invest as much in shoe moulds.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  season: "Winter",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  non_profit: "No.",
  current_metrics: true,
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing",
  )

Project.create!(
  business: User.last,
  budget: 5000,
  tags: "handmade furniture, handmade, goods",
  name: "palora",
  difficulty: "low",
  description: "We are people more aware of our beautiul handmade furniture.",
  duration: "1 year",
  goal: "Our goal is to sell furniture with the craftsmans mark, so people attacha. greater value to our product and brand.",
  target_audience: "Our trget audience are people who share interests in art, shapes, and products that are unique.",
  info: "They need to know about how our .",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  season: "Winter",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  non_profit: "No.",
  current_metrics: true,
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing"
  )

Project.create!(
  business: User.last,
  budget: 25000,
  tags: "buy anything.",
  name: "quickbuy",
  difficulty: "high",
  description: "We are interested in marketing our high-end shoes and getting them to our audience.",
  duration: "6 months",
  goal: "Our goal is to offer a different perspective on how shoe are designed and worn.",
  target_audience: "Our target audience are males & females below the age of 30, we aim to build high quality products that also match their active lifestyle.",
  info: "They need to know about the uniqueness of our design. We seek to make shoe designs that have never been made before. Largely because other companies did not invest as much in shoe moulds.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  season: "Winter",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  non_profit: "No.",
  current_metrics: true,
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing"
  )



Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are interested in pursuing your project",
  pdf: "Please have a look at our proposal",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are extremely interested in working on your project",
  pdf: "Please have a look at our tailored proposal for you",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are very interested in getting busy with your project",
  pdf: "Please have a look at our what we can offer",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are very keen on doing your project",
  pdf: "Please have a look at our what work we can do for you",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are extremely keen on devoting time to your project",
  pdf: "Please have a look at our needs",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are interested in puring your project",
  pdf: "Please have a look at our proposal",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are interested in puring your project",
  pdf: "Please have a look at our proposal",
  accepted: false
)


