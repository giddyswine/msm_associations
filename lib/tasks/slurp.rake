namespace :slurp do
  desc "TODO"
  task customers: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "customers.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Customer.new
      t.promise_id = row["promise_id"]
      t.name = row["name"]
      t.short_name = row["short_name"]
      t.save
      puts "#{t.name} saved"
    end

  end

end
