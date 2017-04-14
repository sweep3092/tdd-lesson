require 'spec_helper'
require 'email_check'

describe EmailCheck do

  shared_context '正しく動く' do
    input = StringIO.new(emails.join("\n"))
    output = StringIO.new

    EmailCheck.check(input, output)

    expect(output.read).to eq answer
  end

  describe '.check' do
    context 'with valid emails' do
      emails = %w(
jfkdsljfls@example.com
fhudsihf@example.com
ijfiofheruh@example.com
jfkdsdjksfjklsd@example.com
fjkfldjslfdj8s9fus@example.com
9420383290u@example.com
      )
      answer = emails.map{'ok'}

      include_context '正しく動く'
    end

    context 'with .. or . emails' do
      emails = %w(
ddds.@example.com
fdskh..fds@example.com
      )
      answer = emails.map{'ng'}

      include_context '正しく動く'
    end
  end
end

