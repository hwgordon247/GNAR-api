require 'csv'
namespace :import_beaches_csv do
  task :create_import => :environment do

    csv_text = File.open('lib/tasks/beaches.csv', "r:ISO-8859-1")

    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Beach.create!(row.to_hash)
    end
  end
end
