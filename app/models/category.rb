class Category < ActiveRecord::Base
  has_many :items, dependent: :destroy


    def self.to_csv
      CSV.generate do |csv|
        csv << column_names
        all.each do |item|
          csv << item.attributes.values_at(*column_names)
        end
      end
    end

end
























