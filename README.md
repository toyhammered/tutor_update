

Initiate server:
  ruby tutor.rb -p $PORT -o $IP 
  lsof -wni tcp:8080 (incase something goes wrong to kill server type kill -9 PID)

Sources:
  http://www.sinatrarb.com/intro.html                         - Sinatra
  http://haml.info/docs/yardoc/file.REFERENCE.html#using_haml - HAML
  http://stackoverflow.com/questions/27048940/trying-to-retrieve-
  data-from-database-then-pass-to-html-in-railss-view         - Ajax jQuery
  

  
Set up Heroku and link domain:
  https://devcenter.heroku.com/articles/custom-domains

  

RACK_ENV=production rake assets:precompile
RACK_ENV=production rake assets:clean