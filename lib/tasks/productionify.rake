task :set_production_socket_url do 
  system 'heroku config |grep HEROKU_APP_NAME |tr -s ":" |cut -d ":" -f 2 > web_url.txt'
  url = File.read('web_url.txt').strip
  system "heroku config:set PRODUCTION_URL=#{url}"
end


task :setup do 
  Rake::Task["db:migrate"].invoke
  Rake::Task["set_production_socket_url"].invoke
end