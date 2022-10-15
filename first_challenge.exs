{limit1, _} = IO.gets("Enter the first number: ") |> Integer.parse
{limit2, _} = IO.gets("Enter the second number: ") |> Integer.parse

defmodule Calculatesequence do
  def sequence(limit,number) when limit > 0 do
    number = "#{limit}" <> number
    sequence(limit-1,number)
  end

  def sequence(_limit,number) do
    number
  end
end

defmodule Math do
  def isDivisor(n,cont) do
    cond do
      rem(n, 3) == 0 -> _cont = cont + 1
      true -> cont
    end
  end
end


defmodule Main do
  def main(n1,n2,cont,_number) when n1 <= n2 do

    number = Calculatesequence.sequence(n1,"")
    number = String.to_integer(number)
    cont = Math.isDivisor(number,cont)

    main(n1+1,n2,cont,number)
  end

  def main(_n1,_n2,cont,_number) do
    cont
  end
end


amount = Main.main(limit1,limit2,0,"")
IO.puts("The number of numbers divisible by 3 is: #{amount}")
