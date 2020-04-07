class PostValidator < ActiveModel::Validator
    def validate(post)
        unless post.title.nil?
            unless post.title.include?("Won't Believe") || post.title.include?("Secret") || post.title.include?("/Top\s\d/") || post.title.include?("Guess")
                post.errors[:title] << "Your post is not sufficiently click-baity."
            end
        end
    end
end