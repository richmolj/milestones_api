[16, 19, 22, 25, 28].each do |epic_id|
  Milestone.create epic_id: epic_id, name: Faker::Lorem.word
end