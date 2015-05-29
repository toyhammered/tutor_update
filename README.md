

Initiate server:
  ruby tutor.rb -p $PORT -o $IP 
  lsof -wni tcp:8080 (incase something goes wrong to kill server type kill -9 PID)

  
URL:
  https://tutor-toyhammered.c9.io/

Sources:
  Diffrence between click and onclick.
    **http://stackoverflow.com/questions/9122078/difference-between-onclick-vs-click
  
  

  
Set up Heroku and link domain:
  https://devcenter.heroku.com/articles/custom-domains

  
Precompiling assets:
  RACK_ENV=production rake assets:precompile
  RACK_ENV=production rake assets:clean
  
SendGrid
  https://gist.github.com/acwright/1944639