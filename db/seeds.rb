require 'csv'

CSV.foreach("#{Rails.root}/db/seed_file.csv", headers: true) do |row|
  Employee.create!(first_name: row['first_name'],
                   last_name:  row['last_name'],
                   position:   row['position'],
                   separation_date: row['separation_date']) unless row.nil?
end
