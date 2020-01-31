require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    product = num ** 2
    product.to_s
  end

  get '/say/:number/:phrase' do
    result = []
    params[:number].to_i.times do
      result << params[:phrase]
    end
    result.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    oper = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    if oper == "add"
      answer = (num1.to_i + num2.to_i).to_s
    elsif oper == "subtract"
      answer = (num1.to_i - num2.to_i).to_s
    elsif oper == "multiply"
      answer = (num1.to_i * num2.to_i).to_s
    elsif oper == "divide"
      answer = (num1.to_i / num2.to_i).to_s
    else
      answer = "invalid input"
    end
    answer
  end

end