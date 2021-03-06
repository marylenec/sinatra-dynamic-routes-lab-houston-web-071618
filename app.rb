require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
   get '/reversename/:name' do
    name = params[:name].reverse!
      "#{name}"
   end

   get '/square/:number' do
    number = params[:number].to_i ** 2
      "#{number}"
   end

   get '/say/:number/:phrase' do
     string = ""
     number = params[:number].to_i
     phrase = params[:phrase]
     number.times do
       string += "#{phrase}\n"
     end
     string.to_s
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end

   get '/:operation/:number1/:number2' do
     number1 = params[:number1].to_i
     number2 = params[:number2].to_i
     operation = params[:operation].to_s

     case operation
     when "add"
       value = number1 + number2
     when "subtract"
       value = number1 - number2
     when "multiply"
       value =  number1 * number2
     when "divide"
       value = number1 / number2
     else
       value = "error"
     end
       value.to_s

   end

end
