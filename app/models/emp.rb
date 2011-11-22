class Emp < ActiveRecord::Base
  acts_as_gmappable
  
  def gmaps4rails_address
    "#{self.address} , #{self.zip} , #{self.city} , #{self.country}"
  end

  config = YAML.load(File.read('../../../desktop/config.yml'))   
  
  # paperclip
  has_attached_file :photo, 
    :storage => :s3 ,
    :bucket => 'andys_paperclip' ,
    :s3_credentials => {
      :access_key_id =>  ENV['S3_KEY'] || config['access_key_id'] ,
      :secret_access_key =>  ENV['S3_SECRET'] || config['secret_access_key']
    } ,
    :styles => {
      :tiny => "25x25" ,
      :thumb => '100x100' ,
      :small => '150x150'
    }
end
