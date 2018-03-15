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
  name: "Ninet",
  difficulty: "low",
  description: "We are interested in marketing our high-end shoes and getting them to our audience.",
  duration: "6 months",
  target_audience: "Our target audience are males & females below the age of 30, we aim to build high quality products that also match their active lifestyle.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing",
  )

Project.create!(
  business: User.last,
  budget: 100000,
  tags: "software, tech, IT, fast-growing.",
  name: "Softrepo",
  difficulty: "high",
  description: "We are an established company looking to increasing our user base.",
  duration: "8 months",
  target_audience: "Our target audience are males & females below the age of 30, we aim to build high quality products that also match their active lifestyle.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing",
  )

Project.create!(
  business: User.last,
  budget: 5000,
  tags: "handmade furniture, handmade, goods",
  name: "Palora",
  difficulty: "low",
  description: "We are people more aware of our beautiul handmade furniture.",
  duration: "1 year",
  target_audience: "Our trget audience are people who share interests in art, shapes, and products that are unique.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing"
  )

Project.create!(
  business: User.last,
  budget: 25000,
  tags: "buy anything.",
  name: "Quickbuy",
  difficulty: "high",
  description: "We are interested in marketing our high-end shoes and getting them to our audience.",
  duration: "6 months",
  target_audience: "Our target audience are males & females below the age of 30, we aim to build high quality products that also match their active lifestyle.",
  current_tools: "Twitter, Google, Facebook",
  problems: "We are trying to break a style barrier in the fashion industry.",
  metrics: "Revenue, Clicks, Visitors",
  visiting: "'Buy a physical product', 'Buy a digital product', 'Purchase a recurring subscription'",
  in_house: false,
  agencies: "Yes, the previous agency did not tailor the digital campaign to our needs.",
  values: "We value change for the better.",
  tactic: "Non-targeted digital marketing"
  )



Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 10000,
  description: "We are interested in pursuing your project",
  pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We are extremely interested in working on your project",
  pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 7500,
  description: "We are very interested in getting busy with your project",
  pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8675,
  description: "We are very keen on doing your project",
  pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 9820,
  description: "We are extremely keen on devoting time to your project",
  pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 4523,
  description: "We are interested in puring your project",
  pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 9100,
  description: "We are interested in puring your project",

  accepted: false
)


