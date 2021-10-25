class JobsClient

  def self.exec(ip, name)
    # options 的 basic验证
    options = {
      username: 'admin',
      password: 'admin',
      hostname: ip
    }

    begin
      # 生成Client对象 且绑定 Server端的 Protos::Jobs
      client = ::Gruf::Client.new(service: ::Protos::Jobs, options: options)
      # 调用 GetJob 拿到返回
      response = client.call(:GetJob, ip: ip, name: name)
      puts response.message.inspect
    rescue Gruf::Client::Error => e
      puts e.error.inspect
    end
  end
end
