# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses
  
  
    def initialize(email_string)
        @email_string = email_string
    end

    def parse
        @email_string.split.collect do |email|
            email.split(',')
        end
        .flatten.uniq
    end

  # def parse(email_addresses)
  # email_addresses.uniq
  #   end 
end 