class Seed

  def self.begin
    seed = Seed.new
    seed.generate_places
    seed.generate_reviews
  end

  def generate_places
    Place.destroy_all
    20.times do |i|
      place = Place.create!(
        name: Faker::LordOfTheRings.location,
        description: Faker::TwinPeaks.quote,
        price: Faker::Commerce.price
      )
    end
    puts "Generated #{Place.count} places."
  end

  def generate_reviews
    Review.destroy_all
    100.times do |i|
      review = Review.create!(
        author: Faker::LordOfTheRings.character,
        content: Faker::Lorem.sentence(3),
        place_id: rand(1..20)
      )
    end
    puts "Generated #{Review.count} reviews."
  end
end


Seed.begin
