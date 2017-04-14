require 'lib/email_check'

class EmailChecker
  EmailCheck.check(STDIN, STDOUT)
end

