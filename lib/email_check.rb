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
      #binding.pry
      chomped = email.chomp
      return false if chomped.include?("..")
      return false if email.empty?
      true
    end
  end

end
