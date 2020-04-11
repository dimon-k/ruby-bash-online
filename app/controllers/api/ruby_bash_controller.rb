class Api::RubyBashController < ActionController::API
  def run_code
    $all_the_puts = Array.new
    body = request.body.read
    begin
      result = eval(body.gsub('puts', '$all_the_puts <<'))
      result = 'nil' if result == $all_the_puts || result == nil
    rescue => e
      result = e.message
    end
    render json: { puts: $all_the_puts, result: result }
  end
end
