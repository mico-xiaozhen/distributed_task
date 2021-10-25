class DistributedTask::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def create_initializer_file
    copy_file "config.rb", "config/initializers/gruf.rb"
  end
end
