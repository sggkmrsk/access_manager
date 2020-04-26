FactoryBot.define do
  factory :user do
    name                  {"abe"}
    authority             {"user"}
    email                 {"kkk@gmail.com"}
    idm                   {"0000000000000000"}
    slack_account         {"@111111"}
    password              {"00000000"}
    password_confirmation {"00000000"}
  end
end
