=begin
configure :production, :development do
  ActiveRecord::Base.establish_connection(
     adapter:  'postgresql',
     host:     '',
     username: settings.database.user,
     password: settings.database.password,
     database: settings.database.path[1..-1],
     encoding: 'utf8'
  )
end
=end
# \conninfo You are connected to database "postgres" as user "postgres" via socket in "/var/run/postgresql" at port "5432".