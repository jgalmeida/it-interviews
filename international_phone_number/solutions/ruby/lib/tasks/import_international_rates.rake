require 'csv'

namespace :db do

  task :import_international_rates do |t|
    InternationalRate.destroy_all

    CSV.foreach("international-rates.csv", {headers: true}) do |row|
      prefixes = row[2].split(",")

      prefixes.each do |prefix|
        InternationalRate.create!({
          prefix: prefix.strip,
          rate: row[1]
        })
      end
    end
  end

end
