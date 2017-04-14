require 'pry-byebug'


class EmailCheck
  class << self
    def check(input, output)
      while oneline = input.gets
        # binding.pry
        output.puts(valid_email?(oneline) ? 'ok' : 'ng')
      end
    end

    def valid_email?(email)
      # TODO: emailがただしいのか
      chomped = email.chomp
      at_place = chomped.index("@example.com", -12)
      return false if at_place == 0
      chomped = chomped[0..at_place-1]

      return false if chomped.end_with?('.')

      splitted = chomped.split(".")
      return false if splitted.include?("")
      return false if splitted =~ /[a-z][A-Z][0-9]+/

      # TODO: quoted-string
      true
    end
  end

end
