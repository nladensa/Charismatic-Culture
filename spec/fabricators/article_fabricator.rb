Fabricator(:article) do
    title {%w(New\ Capybara\ Article Breakfast Animals).sample}
    text {%w(Eggs\ Scrambled Dogs\ Poodle Pencil\ Paper Coffee\ Roast).sample}
    user {Fabricate.build(:user)}
end