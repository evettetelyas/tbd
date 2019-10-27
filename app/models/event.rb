class Event < ApplicationRecord
    # attr_reader :name, :tm_id, :purchase_url, :image_url, :on_sale, :price_min, :price_max, :currency, :seatmap, :limit, :venue

    # def initialize(data)
    #     @name = data[:name]
    #     @tm_id = data[:id]
    #     @purchase_url = data[:purchase_url]
    #     @image_url = data[:image]
    #     @on_sale = data[:on_sale]
    #     @raw_date = data[:date]
    #     @price_min = data[:price_min]
    #     @price_max = data[:price_max]
    #     @currency = data[:currency]
    #     @seatmap = data[:seatmap]
    #     @limit = data[:limit]
    #     @venue = data[:venue]
    # end

    def formatted_date
        date.to_datetime.strftime('%D') if date
    end
end
