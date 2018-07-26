require "tencent_cos_sdk"
require "carrierwave/tencent_cos/version"
require "carrierwave/storage/tencent_cos"

module CarrierWave
  module TencentCos
    CarrierWave.configure do |conf|
      conf.storage_engines.merge! tencent_cos: 'CarrierWave::Storage::TencentCos'
    end
  end

  module Uploader
    class Base
      def self.tencent_cos= options
        TencentCosSdk.configure do |conf|
          conf.secret_id    = options[:secret_id]
          conf.secret_key   = options[:secret_key]
          conf.host         = options[:host]
          conf.parent_path  = options[:parent_path]
        end
      end
    end
  end
end
