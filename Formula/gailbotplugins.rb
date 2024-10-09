class Gailbotplugins < Formula
    desc "A tool to create, download, and upload plugins for GailBot"
    homepage "https://github.com/GailBot-System/GailBotTools"
    url "https://github.com/GailBot-System/GailBotPlugins/releases/download/v0.0.2/GailBotPlugins-v0.0.2.tar.gz"
    sha256 "977276eefa9043dff9403ee58f9fe16125ecdf594d38a801d81ec122ec2c0076"
    license "MIT"
  
    depends_on "python@3.9"

   def install
      system "python3", "setup.py", "install", "--prefix=#{prefix}", "--install-scripts=#{bin}"
      puts "Installed gailbotplugins to #{bin}"
    end

  
    test do
      system "python3", "-c", "import GailBotPlugins; print('Installed successfully')"
    end
  end
