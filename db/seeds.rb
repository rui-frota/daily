# Criando usuários para teste.

require 'faker'

Team.create name: 'admin'
User.create  admin: 'true', team: Team.last, email: 'admin@admin.com', password: 123456


# Criando 10 registros aleatórios de MorningForm para user1
10.times do
  MorningForm.create(
    answer1: Faker::Lorem.sentence(word_count: 6),
    answer2: Faker::Lorem.sentence(word_count: 4),
    user_id: 2,
    created_at: "2025-07-13 23:55:15"
  )
end


# Criando 10 registros aleatórios de AfternoonForm para user2
10.times do
  AfternoonForm.create(
    answer1: Faker::Lorem.sentence(word_count: 6),
    answer2: Faker::Lorem.sentence(word_count: 4),
    user_id: 2,
    created_at: "2025-07-13 17:30:00"
  )
end

# Criando 10 registros aleatórios de MorningForm para user1
10.times do
  MorningForm.create(
    answer1: Faker::Lorem.sentence(word_count: 6),
    answer2: Faker::Lorem.sentence(word_count: 4),
    user_id: 3,
    created_at: "2025-07-13 23:55:15"
  )
end


# Criando 10 registros aleatórios de AfternoonForm para user2
10.times do
  AfternoonForm.create(
    answer1: Faker::Lorem.sentence(word_count: 6),
    answer2: Faker::Lorem.sentence(word_count: 4),
    user_id: 3,
    created_at: "2025-07-13 17:30:00"
  )
end