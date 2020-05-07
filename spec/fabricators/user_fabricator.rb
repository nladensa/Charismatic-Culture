Fabricator(:user) do
  name "#{Random.hex(4)}"
  email { "#{:name}@example.com" }
  password "qwertyuiop"
end