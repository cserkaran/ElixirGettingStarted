defmodule Sample.Enum do

    import Kernel,except: [length: 1]
    # def first(list) when length(list) == 0,do: nil

    # def first([head | _]),do: head

    # def add(list,val \\ 0) do
    #     [val | list]
    # end
    def first(list) do
        if(length(list) == 0) do 
            nil
        else 
            hd(list)
        end
    end

    def map([],_) do
        []
    end

    def map([hd | tl],f) do 
        [f.(hd) | map(tl,f)]
    end

    def length([]),do: 0
    def length([_ | tail]), 
        do: 1 + length(tail)

end
