namespace :slurp do
  desc "TODO"
  task products: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "products.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Product.new
      t.name = row["product"]
      t.ncontent = row["ncontent"]
      t.save
      puts "#{t.name} saved"
    end

  end

end
