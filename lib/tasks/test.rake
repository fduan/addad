namespace :test do
  desc "Run only the tests in the `test/features` directory"
  task :features  => "test:prepare" do
    $: << "test"
    Rails::TestRunner.run(["test/features"])
  end
end