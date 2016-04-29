task :set_production_url do 
  system 'export $HEROKU_APP_NAME'
end

task :setup do 
  Rake::Task["db:migrate"].invoke
  Rake::Task["set_production_url"].invoke
end