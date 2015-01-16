namespace :db do

  task :create_indexes do |t|
    Mongoid.models.each do |model|
      model.create_indexes
    end
  end

end
