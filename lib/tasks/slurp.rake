namespace :slurp do
  desc "TODO"
  task blockchain: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "blockchain.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Blockchain.new
      t.salesperson_id = row["salesperson_id"]
      t.product_id = row["product_id"]
      t.state = row["state"]
      t.city = row["city"]
      t.customer_id = row["customer_id"]
      t.company_id = row["company_id"]
      t.source_id = row["source_id"]
      t.price = row["price"]
      t.metric = row["metric"]
      t.tons = row["tons"]
      t.mode = row["mode_id"]
      t.terms = row["terms"]
      t.ship_start = row["ship_start"]
      t.completed = row["completed"]
      t.save
      puts "#{t.price} saved"
    end

  end

end
