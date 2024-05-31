module ArticlesHelper

    @authors=Author.all

    def full_name(author)
        full=author.fname+' '+author.lname
        full
    end

    def find_author(id)
        if id
            a=Author.find(id)
            name=full_name(a)
            result=link_to name, a
        else
            result='No name'
        end
        result
    end


    def parse_i(text)
        x=text.to_i
        x
    end

    def options_for_select
        options = {}
        @authors.each do |author|
            options[parse_i(author.id)] = full_name(author)
        end
        options
      end
end
