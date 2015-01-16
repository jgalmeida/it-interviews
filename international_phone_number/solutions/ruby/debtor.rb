class Debtor < Sinatra::Base

  use Rack::Parser, :parsers => {
    'application/json' => Proc.new { |body| JSON.parse(body) }
  }
  
  post '/end_call' do
    DebitAccount.perform(params)
  end

end
