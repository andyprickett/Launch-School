munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => -8, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, data|
  case data["age"]
  when (0..17) then data["age-group"] = "kid"
  when (18..64) then data["age-group"] = "adult"
  when (65..Float::INFINITY) then data["age-group"] = "senior"
  else data["age-group"] = "undefined"
  end
end

p munsters

