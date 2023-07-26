require 'faker'

puts "🌱 Seeding spices..."

# Seed data for user profiles
females_avatars = [
  "https://images.unsplash.com/photo-1520943219761-6ca840e2e585?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1531475925016-6d33cb7c8344?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1542278881-48c06d8c8286?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1535997018565-142937b9e38d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1525186492356-0fe09a5831df?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1509679708047-e0e562d21e44?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1526379879527-8559ecfcaec0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1541216970279-affbfdd55aa8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1522390108011-5f8667fd551d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60"
]

males_avatars = [
  "https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1508341591423-4347099e1f19?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWVuJTIwYXZhdGFyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWVuJTIwYXZhdGFyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWVuJTIwYXZhdGFyfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1506634572416-48cdfe530110?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1519689373023-dd07c7988603?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60",
  "https://images.unsplash.com/photo-1609831438388-3b9007de1183?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8Nnw2TTVHd0lmd3RnRXx8ZW58MHx8fHx8&auto=format&fit=crop&w=400&q=60"
]


Faker::Config.locale = 'en-US'

def create_user(gender, seeking_gender)
  first_name = gender == 'female' ? Faker::Name.female_first_name : Faker::Name.male_first_name
  last_name = Faker::Name.last_name
  username = "#{first_name.downcase}.#{last_name.downcase}"
  email = Faker::Internet.safe_email(name: username)
  age = rand(18..65)

  user = User.create!(
    first_name: first_name,
    last_name: last_name,
    username: username,
    email: email,
    password: 'password',
    age: age,
    gender: gender,
    seeking_gender: seeking_gender,
    created_at: Time.now
  )

  puts "Created user: #{user.first_name} #{user.last_name}, Username: #{user.username}, Email: #{user.email}"

  user
end

def generate_profile(user, avatars)
  locations = ['Nairobi', 'Mombasa', 'Kisumu', 'Nakuru']
  marital_statuses = ['Single', 'Married', 'Divorced', 'Widowed']
  ethnicities = ["African", "Caucasian", "Asian", "Other"]
  living_with_options = ["Alone", "With Family", "With Roommates"]
  education_levels = ["High School", "College", "Graduate School", "Doctorate"]
  number_of_children_options = ["None", "1", "2", "3 or more"]
  drinking_habits_options = ['Never', 'Socially', 'Regularly']
  smoking_habits_options = ['Non-smoker', 'Occasional smoker', 'Regular smoker']

  Profile.create!(
    user_id: user.id,
    location: locations.sample,
    marital_status: marital_statuses.sample,
    bio: Faker::Lorem.paragraph(sentence_count: 2),
    interest: Faker::Lorem.words(number: rand(1..5)).join(', '),
    height: "#{rand(4..6)}'#{rand(0..11)}\"",
    ethnicity: ethnicities.sample,
    living_with: living_with_options.sample,
    education_level: education_levels.sample,
    no_of_children: number_of_children_options.sample,
    drinking_habits: drinking_habits_options.sample,
    smoking_habits: smoking_habits_options.sample,
    avatar_url: avatars.sample,
    created_at: Time.now
  )
end

# Get 40 random user ids from the range of 1 to 50
random_user_ids = (1..50).to_a.sample(40)

# Create profiles for the randomly selected users
random_user_ids.each do |user_id|
  gender = user_id % 2 == 0 ? 'female' : 'male'
  avatars = user_id % 2 == 0 ? females_avatars : males_avatars
  user = create_user(gender, gender == 'female' ? 'male' : 'female')
  generate_profile(user, avatars)
end


def generate_favorites(users, profiles)
  favorites = []

  users.each do |user|
    # Select a random number of favorites to create for this user
    num_favorites = rand(1..5)

    # Select random profiles to be added to favorites
    favorite_profiles = profiles.sample(num_favorites)

    favorite_profiles.each do |profile|
      favorites << Favorite.new(user: user, profile: profile)
    end
  end

  Favorite.import favorites, validate: false
end

# Get all existing users and profiles
all_users = User.all
all_profiles = Profile.all

# Generate favorites
generate_favorites(all_users, all_profiles)


# Generating  inbox
# db/seeds.rb

# ... (previous code)
users = User.all
profiles_data = Profile.all
def generate_inboxes_and_messages(users, profiles_data)
  users.each do |user|
    # Create an inbox for each user if the user has a profile
    if user.profile
      Inbox.create!(user_id: user.id, profile_id: user.profile.id)

      # Create two random messages from any other user
      other_users = users.reject { |u| u == user }
      20.times do
        sender = other_users.sample
        recipient = user
        Message.create!(
          sender_id: sender.id,
          recipient_id: recipient.id,
          subject: Faker::Lorem.sentence,
          body: Faker::Lorem.paragraph,
          sent_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
        )
      end
    end
  end
end


puts "🌱 Seeding spices... Complete!"
 