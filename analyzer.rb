# this an arrya of hashes created manually instraed of the database
users = [
    { username: "shaher", password: "password1" },
    { username: "shahi", password: "password2" },
    { username: "Mohamed", password: "password3" },
    { username: "hammdy", password: "password4" },
    { username: "ziva", password: "password5" },
    { username: "marisa", password: "password6" }
]

# authentication method to check and verify if username/password combination exists
def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && user_record[:password] == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
   
  # program execution flow
  puts "Welcome to the authenticator"
  30.times { print "-" }
  puts
  puts "This program will take your input and compare password"
  puts "If password is correct, you will get back the user object which contains the user name and password hash"
   
  attempts = 1
  while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    puts "Thank you for your time"
    break if input == "n"
    attempts += 1
  end
  puts "You have exceeded the number of attempts" if attempts == 4