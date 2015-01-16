namespace :db do

  task :create_demo_account do |t|
    Account.destroy_all
    Movement.destroy_all

    account = Account.create!({
      contact_id: "4f4a37a201c642014200000c",
      credit: 52424242424242.29,
      discount: 0.01
    })

    puts "Created account with id: #{account.id}"
  end

end
