class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            unless record.title.match? /Won't Believe|Secret|Top \d|Guess/
                record.errors[:title] << "The title is not sufficiently clickbait-y."
            end
        end
    end
end
