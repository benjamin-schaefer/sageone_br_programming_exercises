desc 'Setup Application'
task :setup do
  raise 'For development purpose only!' if Rails.env.production?

  if Rails.env.development?
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:test:prepare'].invoke
  else
    Rake::Task['db:schema:load'].invoke
  end

  # Need to reset model information
  # Rake::Task['db:seed'].invoke
  puts `bundle exec rake db:seed`
end

desc 'Initialize Application'
task :initialize do
  Rake::Task['copy_config'].invoke
  Rake::Task['setup'].invoke
end

desc 'Copy config files for Application'
task :copy_config do
  raise 'For development purpose only!' if Rails.env.production?

  cp 'config/database.yml.sqlite', 'config/database.yml'
  cp 'config/secrets.yml.example', 'config/secrets.yml'
end

private

def cp(from)
  run "cp #{from} #{to}"
end

def run(cmd)
  puts "$: #{cmd}"

  `#{cmd}`.tap do |buffer|
    puts ">  #{buffer}"
  end
end
