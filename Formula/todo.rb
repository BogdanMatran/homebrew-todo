 class Todo < Formula                                                                                                                                                      
    desc "A simple CLI todo app built with Kotlin"
    homepage "https://github.com/BogdanMatran/todo-cli"                                                                                                                     
    url "https://github.com/BogdanMatran/todo-cli/releases/download/v1.1/kotlinlearn-1.0-SNAPSHOT-all.jar"                                                                  
    sha256 "a54232c697425335e0e9286739bd410c969df49a9e6115bdd11d095e2ccda36e"
    version "1.1"

    depends_on "openjdk"

    def install
      libexec.install "kotlinlearn-1.0-SNAPSHOT-all.jar" => "todo.jar"
      bin.write_jar_script libexec/"todo.jar", "todo"
    end

    test do
      assert_match "Usage", shell_output("#{bin}/todo help")
    end
  end
