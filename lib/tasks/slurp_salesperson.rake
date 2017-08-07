namespace :slurp do
  desc "TODO"
  task salesperson: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "salesperson.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Salesperson.new
      t.salesperson = row["salesperson"]
      t.save
      puts "#{t.salesperson} saved"
    end

  end

end
