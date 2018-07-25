require "carrierwave/tencent_cos/version"
require "carrierwave/storage/tencent_cos"

module CarrierWave
  module TencentCos
    CarrierWave.configure do |conf|
      conf.storage_engines.merge! tencent_cos: 'CarrierWave::Storage::TencentCos'
    end
  end
end
