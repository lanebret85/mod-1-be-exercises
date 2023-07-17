class Potluck
    attr_reader :date, :dishes

    def initialize(date)
        @date = date
        @dishes = []
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_category(category)
        new_dishes = []
        @dishes.each do |dish|
            if dish.category == category
                new_dishes << dish
            end
        end
        new_dishes
    end

    def menu
        grouped_menu = @dishes.group_by do |dish|
            dish.category
        end
        require 'pry';binding.pry
        # sorted_menu = {}
        # grouped_menu.sort_by do |dish.name|
        #     puts 
        # end
    end
end