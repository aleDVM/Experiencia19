#config.ru
require 'rack'

class MiPrimeraWebApp
  def call(env)
  [200, {'Context-Type' => 'Text/Html'}, [File.read('index.html')]]
 end
end
run MiPrimeraWebApp.new
