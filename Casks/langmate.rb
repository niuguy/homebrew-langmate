cask "langmate" do
  version "1.0.3"
  sha256 "d1268d5366b6ad7a5dd680d16cc64b1f30ee6d2d5c35081cfd9abe4162e86c85"

  url "https://github.com/niuguy/langmate/releases/download/v#{version}/LangMate-#{version}.dmg"
  name "LangMate"
  desc "Menu bar app for AI-powered selected-text rephrasing"
  homepage "https://github.com/niuguy/langmate"

  app "LangMate.app"

  caveats do
    <<~EOS
      Grant Accessibility permission after launching:
        System Settings -> Privacy & Security -> Accessibility -> LangMate

      Configure OpenAI:
        echo 'OPENAI_API_KEY=sk-your-api-key-here' > ~/.langmate.env

      For local Ollama presets, pull a model first:
        ollama pull qwen3:8b
    EOS
  end
end
