class DistributedTask::ClientGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  def create_initializer_file
    copy_file "Jobs_client.rb", "app/rpc/Jobs_client.rb"
  end
end
