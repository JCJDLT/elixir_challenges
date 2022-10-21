{limit1, _} = IO.gets("Enter the first number: ") |> Integer.parse
{limit2, _} = IO.gets("Enter the second number: ") |> Integer.parse

defmodule CalculateSequence do
  def sequence(limit,number) when limit > 0 do
    number = "#{limit}" <> number
    sequence(limit-1,number)
  end

  def sequence(_limit,number) do
    number
  end
end

defmodule Math do
  def sum_if_divisible_by_three(n,cont) do
    cond do
      rem(n, 3) == 0 -> cont + 1
      true -> cont
    end
  end
end


defmodule Main do
  def main(n1,n2,cont \\ 0,_number \\ "")
  def main(n1,n2,cont,_number) when n1 <= n2 do
    number = CalculateSequence.sequence(n1,"") |> String.to_integer()
    cont = Math.sum_if_divisible_by_three(number,cont)
    main(n1+1,n2,cont,number)
  end

  def main(_n1,_n2,cont,_number) do
    cont
  end
end


amount = Main.main(limit1,limit2)
IO.puts("The number of numbers divisible by 3 is: #{amount}")
