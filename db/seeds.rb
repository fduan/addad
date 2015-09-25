require 'rake'

puts "Seeding data!"

Rake::Task['db:seed_fu'].invoke