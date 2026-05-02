cask "langmate" do
  version "1.0.4"
  sha256 "95c9ca005023fd165e623c43b446f7e7b1973fdd7d6761f83463b5d3f374b2f1"

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
