10.times do |course|
  Course.create!(
    short_name: "Course #{course}",
    name: " Corse #{course}",
    description: 'Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.'
  )
end

puts '10 courses created'

5.times do |student|
  Student.create!(
    name: "Student#{student}",
    email: "user@user#{student}.com",
    password: 'password12345'
  )
end

puts '5 users created'

