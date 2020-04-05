class TitleValidator < ActiveModel::Validator 
    def validate(record) 
        key_words = ["Won't Believe", "Secret", "Top/\d/", "Guess"]
        
        unless record.title.to_s.match(Regexp.union(key_words))
            record.errors[:title] << "Title needs more Click Bait words!"
        end 
    end
end 