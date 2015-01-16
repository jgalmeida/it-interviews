namespace :db do

  task :remove_indexes do |t|
    Mongoid.models.each do |model|
      model.remove_indexes
    end
  end

end
