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
      chomped = chomped[0..(chomped.index("@example.com", -12) - 1)]

      return false if chomped.empty?
      
      splitted = chompled.split(".")
      return false if splitted.include?("")
      return false if splitted.match()

      # TODO: quoted-string
      true
    end
  end

end
