require "carrierwave/tencent_cos/version"
require "carrierwave/storage/tencent_cos"

module Carrierwave
  module TencentCos
    def self.init
      CarrierWave.configure do |conf|
        conf.storage_engines.merge! tencent_cos: 'CarrierWave::Storage::TencentCos'
      end
    end
  end
end

Carrierwave::TencentCos.init
