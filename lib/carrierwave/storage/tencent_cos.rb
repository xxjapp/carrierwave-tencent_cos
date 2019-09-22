require 'carrierwave'
require "tencent_cos_sdk"

module CarrierWave
    module Storage
        class TencentCos < Abstract
            # Create and save a file instance to your engine.
            def store!(file)
                f = CarrierWave::Storage::TencentCos::File.new(uploader.store_path)
                f.store(file)
                f
            end
            
            def cache!(file)
                f = CarrierWave::Storage::TencentCos::File.new(uploader.store_path)
                f.store(file)
                f
            end

            # Load and return a file instance from your engine.
            def retrieve!(identifier)
                CarrierWave::Storage::TencentCos::File.new(uploader.store_path(identifier))
            end

            # Subclass or duck-type CarrierWave::SanitizedFile
            # responsible for storing the file to your engine.
            class File
                attr_reader :path

                # Initialize as required.
                def initialize(path)
                    @path = path
                end

                def store(new_file)
                    TencentCosSdk.put @path, file: new_file.path
                end

                def url
                    TencentCosSdk.url @path
                end

                def delete
                    TencentCosSdk.delete @path
                end
            end # File
        end # TencentCos
    end # Storage
end # CarrierWave
