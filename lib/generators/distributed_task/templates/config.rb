require 'gruf'
require 'rpc/lib/Jobs_services_pb'

Gruf.configure do |c|
  # 绑定地址
  c.server_binding_url = '127.0.0.1:3003'
  # pool size
  c.rpc_server_options = c.rpc_server_options.merge(pool_size: 10)
  # basic 验证
  c.interceptors.use(
    Gruf::Interceptors::Authentication::Basic,
    credentials: [{
      username: 'admin',
      password: 'admin',
    }]
  )
end
