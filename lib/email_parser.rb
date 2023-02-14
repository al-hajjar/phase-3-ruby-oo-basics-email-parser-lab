# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').



require 'pry'

class EmailAddressParser

    attr_accessor :string

    def initialize(string)
        @string = string
    end

    def parse
        #split string into email address separated by space or comma
        x = @string.split(/[, ]/)
        #remove any empty elements of array
        y = x.reject{|element| element.empty?}
        #remove any duplicate email address and return array
        z = y.uniq
    end

end

puts EmailAddressParser.new("abdi@doe.com, person@somewhere.org").parse

puts EmailAddressParser.new("abdi@doe.com person@somewhere.org").parse