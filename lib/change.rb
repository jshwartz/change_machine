class Fixnum
  define_method(:change) do
    user_cents = self
    pennies = self
    quarters = 0
    dimes = 0
    nickels = 0
    quarters_text = ""
    dimes_text = ""
    nickels_text = ""
    pennies_text = ""

    until pennies < 25
      quarters += 1
      pennies -= 25
    end
    until pennies < 10
      dimes += 1
      pennies -= 10
    end
    until pennies < 5
      nickels += 1
      pennies -= 5
    end

    if quarters == 1
      quarters_text = "quarter"
    else
      quarters_text = "quarters"
    end
    if dimes == 1
      dimes_text = "dime"
    else
      dimes_text = "dimes"
    end
    if nickels == 1
      nickels_text = "nickel"
    else
      nickels_text = "nickels"
    end
    if pennies == 1
      pennies_text = "penny"
    else
      pennies_text = "pennies"
    end

    return "Your change from #{user_cents} cents is #{quarters} #{quarters_text} #{dimes} #{dimes_text} #{nickels} #{nickels_text} and #{pennies} #{pennies_text}."

  end
end
