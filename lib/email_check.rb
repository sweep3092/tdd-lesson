class EmailCheck
  class << self
    def check(input, output)
      while oneline = input.gets
        output.puts(valid_email?(oneline) ? 'ok' : 'ng')
      end
    end

    def valid_email?(email)
      # TODO: emailがただしいのか
    end
  end

end
