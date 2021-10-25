# JobsController 基础与 Gruf::Controllers::Base抽象类

class JobsController < ::Gruf::Controllers::Base
  # 绑定 Jobs_services_pb
  bind ::Protos::Jobs::Service

  # 该方法为入口
  def get_job
    # 请求接受时 request为Gruf::Controllers::Request 对象
    # message为RPC message对象
    ip = request.message.ip
    name = request.message.name
    result = "Hello 请求参数为 ip: #{ip}, name: #{name} " 
    puts result

    if valid_name.include?(name) || valid_name.blank?
      system("rake #{name}")
      flag = 1
    else
      flag = 0
    end

    # 返回 方法调用
    Protos::GetJobResp.new(ip: ip, name: name, flag: flag)
  rescue StandardError => _e
    fail!(:not_found, :job_not_found, "Failed to find Job with ip: #{request.message.ip}")
  end

  private

  def valid_name
    []
  end

end
