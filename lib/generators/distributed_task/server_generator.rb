class DistributedTask::ServerGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def create_initializer_file
    copy_file "jobs_controller.rb", "app/rpc/jobs_controller.rb"
  end
end
