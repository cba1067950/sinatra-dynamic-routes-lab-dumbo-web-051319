require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse!
  end

  get "/square/:number" do
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @op
    when "add"
      @op = "+"
    when "subtract"
      @op = "-"
    when "multiply"
      @op = "*"
    when "divide"
      @op = "/"
    end
    "#{@number1.send(@op, @number2)}"
  end

end
