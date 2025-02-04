require "sinatra"
require "sinatra/reloader"

# Redirect root to "/add"
get("/") do
  redirect("/add")
end

# ✅ Addition
get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num + @second_num
  erb(:add_result)
end

# ✅ Subtraction (Fixed filenames)
get("/subtract") do
  erb(:subtraction_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num - @second_num
  erb(:sub_result)
end

# ✅ Multiplication (Fixed filenames)
get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @first_num * @second_num
  erb(:mult_result)
end

# ✅ Division (Fixed filenames)
get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_num = params.fetch("first_num").to_f
  @second_num = params.fetch("second_num").to_f
  @result = @second_num.zero? ? "Cannot divide by zero" : (@first_num / @second_num)
  erb(:div_result)
end
