require 'colorize'

class Choice
  def initialize msg, choices
    @msg = msg
    @choices = choices
  end

  def prompt
    put_prompt_msg
    get_prompt_resp
  end

  private
  def put_prompt_msg
    p = []
    p << @msg
    @choices.each do |key, description|
      p << "[#{key}] ".red +  description
    end
    puts "#{p.join("\n")}\n"
  end

  def get_prompt_resp
    gets.chomp
  end

end
