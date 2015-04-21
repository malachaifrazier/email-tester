ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => 'gmail.com',
    :user_name            => 'alicehtml1@gmail.com',
    :password             => 'Codemail123',
    :authentication       => 'plain',
    :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "detroitrails.co"

# Mandrill

# config.action_mailer.smtp_settings = {
#   :address   => "smtp.mandrillapp.com",
#   :port      => 587,
#   :user_name => "app10487968@heroku.com",
#   :password  => "c8691c92-1d90-4e92-aab3-7d0de7464696"
# }