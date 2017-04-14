require 'spec_helper'
require 'email_check'
require 'pry'
require 'pry-byebug'

describe EmailCheck do

  shared_context '正しく動く' do |emails, answer|
    input = StringIO.new(emails.join("\n"))
    output = StringIO.new

    it do
      EmailCheck.check(input, output)
      expect(output.string).to eq(answer.join("\n") + "\n")
    end
  end

  describe '.check' do
    context 'with valid emails' do
      emails_base = %w(
jfkdsljfls@example.com
fhudsihf@example.com
ijfiofh3123eruh@example.com
jfkds.djksfjklsd@example.com
fjkfldjslfdj8s9fus@example.com
94203.83290u@example.com
      )
      answer_base = emails_base.map{'ok'}
      include_context '正しく動く', emails_base,  answer_base
    end

    context 'with .. or . emails' do
      emails = %w(
ddds.@example.com
fdskh..fds@example.com
      )
      answer = emails.map{'ng'}

      include_context '正しく動く', emails, answer
    end

    context 'with 変なの' do
      emails = ['@example.com']
      answer = ['ng']

      include_context '正しく動く', emails, answer
    end
  end
end
