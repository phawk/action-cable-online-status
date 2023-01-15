%w[
  paul
  amy
  sarah
  shan
  emily
  bert
  alice
  nate
  gloria
  gustav
].each do |username|
  User.where(username: username).first_or_create!
end

