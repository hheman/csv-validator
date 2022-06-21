class Validator
    def validate(file_name)
        file = File.open(file_name)
        data = file.read
        org_data = data.split("\n").map do |row|
            i = 1
            row.split(",").reduce({}) do |acc, col|
                acc[i] = col
                i += 1
                acc
            end
        end

        org_data
    end
end
