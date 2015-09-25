namespace :test do
  Rails::TestTask.new(:features => :prepare) do |t|
    t.pattern = "test/features/**/*_test.rb"
  end
  Rake::Task['test:features'].comment = "Runs features tests in a single block"

end