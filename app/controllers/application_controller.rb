class ApplicationController < ActionController::Base

  def blank_square_form
    render({:template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square
    @num = params.fetch("squarenumber").to_f
    @square_of_num = @num * @num
    render({:template => "calculation_templates/square_results.html.erb"})
  end

  def blank_square_root_form
    render({:template => "calculation_templates/square_root_form.html.erb"})
  end

  def calculate_square_root
    @root_num = params.fetch("rootnumber").to_f
    @root_of_root_num = @root_num ** 0.5
    render({:template => "calculation_templates/square_root_results.html.erb"})
  end

  def blank_payment_form
    render({:template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment
    render({:template => "calculation_templates/payment_results.html.erb"})
  end

  def blank_random_form
    render({:template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random
    @min_num = params.fetch("user_min_num").to_f
    @max_num = params.fetch("user_max_num").to_f
    @rand_num = rand(@min_num...@max_num)
    render({:template => "calculation_templates/random_results.html.erb"})
  end

end
