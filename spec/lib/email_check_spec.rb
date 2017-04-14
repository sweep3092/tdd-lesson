require 'spec_helper'
require 'email_check'

describe EmailCheck do

  it '正しく動く' do
    input = StringIO.new(<<-EOF
  jfkdsljfls@example.com
  fhudsihf@example.com
  ijfiofheruh@example.com
  jfkdsdjksfjklsd@example.com
  fjkfldjslfdj8s9fus@example.com
  9420383290u@example.com
  @example.com
  ddds.@example.com
  fdskh..fds@example.com
  fdsjfkl@ewr@example.com
  EOF
    )
    EmailCheck.check(input, output)
    answer = <<-EOF
  ok
  ok
  ok
  ok
  ok
  ok
  ng
  ng
  ng
  ng
  EOF
    expect(output.read).to eq answer

end


end
