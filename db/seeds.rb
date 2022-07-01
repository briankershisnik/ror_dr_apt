
@specialties = ['Family Medicine', 'Pediatrics', 'ENT', 'Dermitology']
Doctor.delete_all

10.times do
  Doctor.create(
    first: Faker::Name.first_name,
    last: Faker::Name.last_name,
    image: Faker::LoremFlickr.image(size: "50x60", search_terms: ['headshot']),
    specialty: @specialties.sample,
    bio: Faker::Lorem.paragraph
  )

  Doctor.all.each do |c|
    puts "First: #{c.first}"
    puts "Last: #{c.last}"
    puts "Image: #{c.image}"
    puts "Specialty: #{c.specialty}"
    puts "Bio: #{c.bio}"
  end
end