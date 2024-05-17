module AuthorsHelper

    @articles = Article.all

    def full_name(author)
        full=author.fname+' '+author.lname
        full
    end

    def check_output(id)
        result=''
        if check_articles(id).empty?
            result='This author does not have any articles yet.'
        end
        result
    end


    def check_articles(id)
        a_list=[]
        @articles.each do |article|
            if article.authorId.to_i==id
                a_list.push article
            end
            
        end
        a_list
    end

end
