# frozen_string_literal: true

FactoryBot.define do
  factory :movie do
    title { "300: Rise of an Empire" }
    plot do
      <<~TXT
        Queen Gorgo of Sparta tells her men about the Battle of Marathon, in which King Darius of Persia was killed by General Themistokles of Athens ten years earlier. Darius's son, Xerxes, witnesses his father's death, and is advised to not continue the war, since "only the gods can defeat the Greeks". Darius's naval commander, Artemisia, claims that Darius' last words were in fact a challenge and sends Xerxes on a journey through the desert. Xerxes finally reaches a cave and bathes in an otherworldly liquid, emerging as the 8-foot tall "God-King". He returns to Persia and declares war on Greece to avenge his father.
      TXT
    end
  end
end
