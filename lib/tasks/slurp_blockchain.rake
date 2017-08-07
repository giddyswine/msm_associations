namespace :slurp do
  desc "TODO"
  task companies: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "products.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Products.new
      t.name = row["Company"]
      t.save
      puts "#{t.name} saved"
    end

  end

end
