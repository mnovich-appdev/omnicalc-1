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
    @apr = params.fetch("user_apr").to_f
    @num_years = params.fetch("user_years").to_f
    @principal = params.fetch("user_pv").to_f

    @pv = @principal
    @n = @num_years * 12
    @r = @apr / (100*12)

    @numerator = ((1+@r)**@n)-1
    @denominator = @r*((1+@r)**@n)
    @payment = @pv/(@numerator/@denominator)

      
    @apr_display = @apr.to_s(:percentage, {:precision => 4})
    @num_years_display = @num_years.to_i
    @principal_display = @principal.to_s(:currency) 
    @payment_display = @payment.to_s(:currency)
    
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
