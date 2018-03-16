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
  email: "sal@ad.com",
  password: "testtest",
  agency: true,
  business_name: 'Agency Company'
)

User.create!(
  email: "sam@hp.com",
  password: "testtest",
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
  description: "Pixelads is an ad agency that specializes in marketing digital software products. We target websites that software developers and enthusiasts visit regularly and push our ads there. We were intruiged by your idea and we believe in its potential to grow over the coming few years. Please find our offer enclosed.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8500,
  description: "We from FASH X AD are interested in taking on your campaign. We only advertise digitally for products in the fashion industry. We target unique small business websites that are quickly gaining popularity over larger and more established businesses. Please find our proposal enclosed, and feel free to contact Emma (emma@fashxad.co.jp) for any enquiries.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 7500,
  description: "We are writing to you from LUX C, an advertising firm that specializes in targetinh HNWI and buyers from the art community. The creativity of your product is one that we have assessed would appeal to artists and collectors. We are looking to advertise your product on art websites and auction houses. Please find enclosed herewith your proposal as well as details on famous pieces we have auctioned off globally.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 8675,
  description: "Please find our proposal enclosed. At FOUND&LOST we take pride in our digital marketing strategies. We advertise on all existing platforms and we use our existing algortithms to ensure that we achieve your required metric goals. Please find our proposal as well as some details about our previous work.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 9820,
  description: "P O P is an advertising firm that specializes in marketing products that gain popularity among younger generations. We specialize in marketing to people below the age of 30, and have experience in reaching the consumers through our data algorithms.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 4523,
  description: "We at FOR & FOR are interested in pursuing your project. We target people interested in the software industry. We have the best data scientists building advertising algorithms on an ongoing basis, and we can deploy your advertising needs within a week using existing algorithms. Please get in touch should you find our proposal suitable.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)

Proposal.create!(
  agency: User.first,
  project: Project.all.sample,
  bid_amount: 9100,
  description: "We are writing to you from 3+7, an ad agency based in Osaka that markets products all around the world. We moved from the paper advertising space to digital, as a result, we can combine your paper advertising needs along with your digital needs. Please find attached the products we offer to our clients, they fit your budget and may add value in raising awareness locally. Regarding digital ads, please look at the digital section of the proposal to see how effective our algorithms can be at reaching your goal. We look forward to hearing back.",
  remote_pdf_url: "https://res.cloudinary.com/dxwhyx0o0/image/upload/v1521116160/Untitled_document.pdf",
  accepted: false
)


