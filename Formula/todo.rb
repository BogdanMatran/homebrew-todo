 class Todo < Formula                                                                                                                                                      
    desc "A simple CLI todo app built with Kotlin"
    homepage "https://github.com/BogdanMatran/todo-cli"                                                                                                                     
    url "https://github.com/BogdanMatran/todo-cli/releases/download/v1.0/kotlinlearn-1.0-SNAPSHOT-all.jar"                                                                  
    sha256 "37542415147ef6a7a62de77af5b5e47db1ace61b2774dbce1085dbf1f9ac08e4"
    version "1.0"

    depends_on "openjdk"

    def install
      libexec.install "kotlinlearn-1.0-SNAPSHOT-all.jar" => "todo.jar"
      bin.write_jar_script libexec/"todo.jar", "todo"
    end

    test do
      assert_match "Usage", shell_output("#{bin}/todo help")
    end
  end
