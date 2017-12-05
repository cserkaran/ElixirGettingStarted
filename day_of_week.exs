defmodule Sample.DayOfWeek do
    def day_abbreviation(day) do
        if day == :Monday do
            "M"
        else 
            if day == :Tuesday do
                "T"
            else 
                if day == :Wednesday do
                    "W"
                else
                    if day == :Thursday do
                        "Th"
                    else
                        if day == :Friday do
                            "F"
                        else
                            if day == :Saturday do
                                "Sa"
                            else
                                "Su"
                            end
                        end
                    end
                end
            end
        end
    end

    def day_abbreviation2(day)  do
        cond do
            day == :Monday -> "M"
            day == :Tuesday -> "T"
            day == :Wednesday -> "W"
            day == :Thursday -> "Th"
            day == :Friday -> "F"
            day == :Saturday -> "Sa"
            day == :Sunday -> "Su"
            true -> "Invalid day"
        end
    end

    def day_abbreviation3(:Monday), do: "M"
    def day_abbreviation3(:Tuesday), do: "T"
    def day_abbreviation3(:Wednesday), do: "W"
    def day_abbreviation3(:Thursday), do: "Th"
    def day_abbreviation3(:Friday), do: "F"
    def day_abbreviation3(:Saturday), do: "Sa"
    def day_abbreviation3(:Sunday), do: "Su"
    def day_abbreviation3(_), do: "Invalid day"

    def day_abbreviation4 do 
        case day do 
            :Monday -> "M"
            :Tuesday -> "Tu"
            :Wednesday -> "W"
            :Thursday -> "Th"
            :Friday -> "Fr"
            :Saturday -> "Sa"
            :Sunday -> "Su"
            _ -> "Invalid day"
    end
end