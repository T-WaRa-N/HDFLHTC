=begin
Converting any number from digits to words
The number must be between 0 and 999999999999999
=end


#converting digits to words eg 0 to Zero 
def digit_to_word(digit)
  digit_name = ""
  case(digit)
    when(0)
    digit_name = "Zero"
    when(1)
    digit_name = "One"
    when(2)
    digit_name = "Two"
    when(3)
    digit_name = "Three"
    when(4)
    digit_name = "Four"
    when(5)
    digit_name = "Five"
    when(6)
    digit_name = "Six"
    when(7)
    digit_name = "Seven"
    when(8)
    digit_name = "Eight"
    when(9)
    digit_name = "Nine"
    when(10)
    digit_name = "Ten"
    when(11)
    digit_name = "Eleven"
    when(12)
    digit_name = "Twelve"
    when(13)
    digit_name = "Thirteen"
    when(14)
    digit_name = "Fourteen"
    when(15)
    digit_name = "Fifteen"
    when(16)
    digit_name = "Sixteen"
    when(17)
    digit_name = "Seventeen"
    when(18)
    digit_name = "Eighteen"
    when(19)
    digit_name = "Nineteen"
  end
  return digit_name
end

#Hundreds, tens and Units
def f9(arr)
  #array of multiples of tens
multiples_of_ten = Array["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  if arr.length == 1
    return digit_to_word(arr[0].to_i)
  elsif arr.length == 2      
    if arr[1] == "0"
      return multiples_of_ten[arr[0].to_i - 1]
    elsif arr[0] == "1"
      return digit_to_word((arr[0]+arr[1]).to_i)
    else
      return multiples_of_ten[arr[0].to_i - 1] +"-"+ digit_to_word(arr[1].to_i).downcase
    end
  else
    if arr[0] =="0" and arr[1] == "0" and arr[2] == "0"
      return " "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i)+" hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i) + "hundred "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] == "0"
      return "and " + multiples_of_ten[arr[1].to_i - 1].downcase
    elsif arr[0] =="0" and arr[1] == "0" and arr[2] != "0"
      return " and " + digit_to_word(arr[2].to_i)
    elsif arr[0] =="0" and arr[1] == "1" and arr[2] != "0"
      return " and " + digit_to_word((arr[1]+arr[2]).to_i).downcase
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] != "0"
      return " and " + multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word(arr[2].to_i).downcase
    elsif arr[0] !="0" and arr[1] == "1" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word((arr[1]+arr[2]).to_i).downcase
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase
    end
  end
end

#Thousands
def f99(arr)
  #array of multiples of tens
multiples_of_ten = Array["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  if arr.length == 1
    return digit_to_word(arr[0].to_i) + " thousand"
  elsif arr.length == 2
    if arr[1] == "0"
      return multiples_of_ten[arr[0].to_i - 1] + " thousand"
    elsif arr[0] == "1"
      return digit_to_word((arr[0]+arr[1]).to_i) + " thousand"
    else
      return multiples_of_ten[arr[0].to_i - 1] +"-"+ digit_to_word(arr[1].to_i).downcase + " thousand,"
    end
  else
    if arr[0] =="0" and arr[1] == "0" and arr[2] == "0"
      return " "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i)+" hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + " thousand, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i) + " hundred thousand, "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] == "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " thousand, "
    elsif arr[0] =="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[2].to_i) + " thousand, "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] != "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase + " thousand, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word(arr[2].to_i).downcase + " thousand, "
    elsif arr[0] !="0" and arr[1] == "1" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word((arr[1]+arr[2]).to_i).downcase + " thousanad, "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase + " thousand, "
    end
  end
end

#Millions
def f999(arr)
  #array of multiples of tens
multiples_of_ten = Array["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  if arr.length == 1
    return digit_to_word(arr[0].to_i) + " million, "
  elsif arr.length == 2
    if arr[1] == "0"
      return multiples_of_ten[arr[0].to_i - 1] + " million, "
    elsif arr[0] == "1"
      return digit_to_word((arr[0]+arr[1]).to_i) + " million, "
    else
      return multiples_of_ten[arr[0].to_i - 1] +"-"+ digit_to_word(arr[1].to_i).downcase + " million, "
    end
  else
    if arr[0] =="0" and arr[1] == "0" and arr[2] == "0"
      return " "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i)+" hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + " million, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i) + " hundred million, "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] == "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " million, "
    elsif arr[0] =="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[2].to_i) + "million, "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] != "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " " + digit_to_word(arr[2].to_i).downcase + " million, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word(arr[2].to_i).downcase + "million, "
    elsif arr[0] !="0" and arr[1] == "1" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word((arr[1]+arr[2]).to_i).downcase + " million, "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase + " million, "
    end
  end
end

def f9999(arr)
  #array of multiples of tens
multiples_of_ten = Array["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  if arr.length == 1
    return digit_to_word(arr[0].to_i) + " billion, "
  elsif arr.length == 2
    if arr[1] == "0"
      return multiples_of_ten[arr[0].to_i - 1] + " billion, "
    elsif arr[0] == "1"
      return digit_to_word((arr[0]+arr[1]).to_i) + " billion, "
    else
      return multiples_of_ten[arr[0].to_i - 1] +"-"+ digit_to_word(arr[1].to_i).downcase + " billion, "
    end
  else
    if arr[0] =="0" and arr[1] == "0" and arr[2] == "0"
      return " "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i)+" hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + " billion, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i) + " hundred billion"
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] == "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " billion, "
    elsif arr[0] =="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[2].to_i) + "billion,"
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] != "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " " + digit_to_word(arr[2].to_i).downcase + " billion, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word(arr[2].to_i).downcase + " billion, "
    elsif arr[0] !="0" and arr[1] == "1" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word((arr[1]+arr[2]).to_i).downcase + " billion, "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase + " billion, "
    end
  end
end

def f99999(arr)
  #array of multiples of tens
multiples_of_ten = Array["Ten", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  if arr.length == 1
    return digit_to_word(arr[0].to_i) + " trillion, "
  elsif arr.length == 2
    if arr[1] == "0"
      return multiples_of_ten[arr[0].to_i - 1] + " trillion, "
    elsif arr[0] == "1"
      return digit_to_word((arr[0]+arr[1]).to_i) + " trillion, "
    else
      return multiples_of_ten[arr[0].to_i - 1] +"-"+ digit_to_word(arr[1].to_i).downcase + " trillion, "
    end
  else
    if arr[0] =="0" and arr[1] == "0" and arr[2] == "0"
      return " "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i)+" hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + " trillion, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] == "0"
      return digit_to_word(arr[0].to_i) + " hundred trillion "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] == "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " trillion, "
    elsif arr[0] =="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[2].to_i) + " trillion, "
    elsif arr[0] =="0" and arr[1] != "0" and arr[2] != "0"
      return multiples_of_ten[arr[1].to_i - 1].downcase + " " + digit_to_word(arr[2].to_i).downcase + " trillion, "
    elsif arr[0] !="0" and arr[1] == "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word(arr[2].to_i).downcase + " trillion, "
    elsif arr[0] !="0" and arr[1] == "1" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + digit_to_word((arr[1]+arr[2]).to_i).downcase + " trillion, "
    elsif arr[0] !="0" and arr[1] != "0" and arr[2] != "0"
      return digit_to_word(arr[0].to_i) + " hundred and " + multiples_of_ten[arr[1].to_i - 1].downcase + "-" + digit_to_word(arr[2].to_i).downcase + " trillion, "
    end
  end
end


#Say_number_function
def say_the_number(number)
  num_to_str = number.to_s.split('')
  two_d_arr = Array[]
  number_of_digits = num_to_str.length
  three_digits_array = Array[]
  number_in_words = ""
  
  while number_of_digits != 0
    digit = num_to_str.pop()
    three_digits_array.unshift(digit)
    if three_digits_array.length == 3
      two_d_arr.unshift(three_digits_array)
      three_digits_array = Array[]
    elsif number_of_digits == 1
      two_d_arr.unshift(three_digits_array)
    end
    number_of_digits -= 1
  end

  case(two_d_arr.length)
    when(1)
    number_in_words = f9(two_d_arr[0]) + "."
    when(2) 
      number_in_words = f99(two_d_arr[0]) + f9(two_d_arr[1]).downcase + "."
    when(3)
      number_in_words = f999(two_d_arr[0])  + f99(two_d_arr[1]).downcase  + f9(two_d_arr[2]).downcase + "." 
    when(4)
     number_in_words = f9999(two_d_arr[0]) + f999(two_d_arr[1]).downcase + f99(two_d_arr[2]).downcase + f9(two_d_arr[3]).downcase + "."
    when(5)
    number_in_words = f99999(two_d_arr[0]) + f9999(two_d_arr[1]).downcase + f999(two_d_arr[2]).downcase +  f99(two_d_arr[3]).downcase + f9(two_d_arr[4]).downcase + "."
    else
    number_in_words = "The number is too big it can not be converted because it is exceeding a trillion"
  end
  return number_in_words
end

# puts say_the_number(1001) for testing
