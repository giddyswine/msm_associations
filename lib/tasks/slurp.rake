namespace :slurp do
  desc "TODO"
  task states: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "states.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = State.new
      t.state = row["states"]
      t.save
      puts "#{t.state} saved"
    end

  end


  task locations: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "locations.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Location.new
      t.company_id = row["company_id"]
      t.city = row["city"]
      t.state = row["state"]
      t.save
      puts "#{t.state} saved"
    end

  end


  task locationdetails: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "locationdetails.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Locationdetail.new
      t.company_id = row["company_id"]
      t.location_id = row["location_id"]
      t.product_id = row["product"]
      t.capacity = row["capacity"]
      t.save
      puts "#{t.capacity} saved"
    end

  end

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
      t.latitude = row["latitude"]
      t.longitude = row["longitude"]
      t.shiptonumber = row["shiptonumber"]
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

 task shiptolocations: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "shiptolocations.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Shiptolocation.new
      t.state = row["state"]
      t.county = row["ship to county"]
      t.city = row["ship to city"]
      t.latitude = row["latitude"]
      t.longitude = row["longitude"]
      t.shiptonumber = row["ship to number"]
      t.shiptoname = row["ship to name"]
      t.parent = row["parent"]
      t.nickname = row["nickname"]
      t.nh3 = row["nh3"]
      t.uan = row["uan"]
      t.urea = row["urea"]
      t.an = row["an"]
      t.truck = row["truck"]
      t.rail = row["rail"]
      t.unittrain = row["unit train"]
      t.railline = row["rail line"]
      t.barge = row["barge"]
      t.nh3storage = row["nh3storage"]
      t.uanstorage = row["uanstorage"]
      t.ureastorage = row["ureastorage"]
      t.anstorage = row["anstorage"]
      t.nh32015 = row["nh32015"]
      t.nh32016 = row["nh32016"]
      t.nh32017 = row["nh32017"]
      t.urea2015 = row["urea2015"]
      t.urea2016 = row["urea2016"]
      t.urea2017 = row["urea2017"]
      t.uan2015 = row["uan2015"]
      t.uan2016 = row["uan2016"]
      t.uan2017 = row["uan2017"]
      t.an2015 = row["an2015"]
      t.an2016 = row["an2016"]
      t.an2017 = row["an2017"]
      t.save
      puts "#{t.shiptonumber} saved"
    end

  end

end
