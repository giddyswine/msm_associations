namespace :slurp do
  desc "TODO"
  task mode: :environment do
    
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "mode.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      t = Mode.new
      t.mode = row["mode"]
      t.save
      puts "#{t.mode} saved"
    end

  end

end
