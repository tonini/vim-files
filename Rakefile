require 'rake'

desc "create symlinks for the vim config file"
task :symlinks do
  puts "\033[92mcreate symlinks for the vim config file\003[0m"
  # strange to use that code for one file, but it's made for the future. ;)
  ["vimrc"].each do |file|
    if File.exist?(File.join(ENV['HOME'],".#{file}"))
      print "\033[91mfile already exist, overwrite ~/.#{file}?\033[0m \033[92m[ynq]\033[0m"
      case $stdin.gets.chomp
      when 'y'
        system %{rm "$HOME/.#{file}"}
        link(file)
      when 'q'
        exit
      else
        puts "skipping ~/.#{file}"
      end
    else
      puts "linking ~/.#{file}"
      link(file)
    end
  end
end

def link(file)
 system %{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

desc "init and update git submodules"
task :submodules do
  puts "\033[92minit and update 'git submodules'\033[0m"
  system "git submodule init"
  system "git submodule update"
end

desc "compile the 'command-t' vim plugin"
task :command_t do
  puts "\033[92mcompile 'command-t' plugin...\033[0m"
  Dir.chdir("bundle/command-t/ruby/command-t") do
    system "ruby extconf.rb"
    system "make"
  end
end

desc "install the vim files into user's home directory"
task :install => [:symlinks, :submodules, :command_t]
