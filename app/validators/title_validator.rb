class TitleValidator < ActiveModel::Validator
    def validate(record)   

        if(record.title != nil)
            valid_bait = false     
            ["Won't Believe", "Secret", "Top [number]", "Guess"].each{|phrase| 
                if record.title.include?(phrase) == true
                    valid_bait = true
                end
            }

            if(valid_bait == false)
                record.errors[:title] << "Not clickybatable."
            end
        end
    end
end