namespace :slurp do
  desc "TODO"
  task companylocations: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "companylocations.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Location.new
      t.company_id = row["company_id"]
      t.city = row["city"]
      t.state = row["state"]
      t.save
      puts "#{t.city} saved"
    end

  end

end
