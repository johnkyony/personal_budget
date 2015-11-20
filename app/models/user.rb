
class User < ActiveRecord::Base
has_many :points  
has_many :badges , :through => :levels 
has_many :levels  

def change_points(options)
  if Gioco::Core::KINDS
    points = options[:points]
    kind   = Kind.find(options[:kind])
  else
    points = options
    kind   = false
  end

  if Gioco::Core::KINDS
    raise "Missing Kind Identifier argument" if !kind
    old_pontuation = self.points.where(:kind_id => kind.id).sum(:value)
  else
    old_pontuation = self.points.to_i
  end
  new_pontuation = old_pontuation + points
  Gioco::Core.sync_resource_by_points(self, new_pontuation, kind)
end

def next_badge?(kind_id = false)
  if Gioco::Core::KINDS
    raise "Missing Kind Identifier argument" if !kind_id
    old_pontuation = self.points.where(:kind_id => kind_id).sum(:value)
  else
    old_pontuation = self.points.to_i
  end
  next_badge       = Badge.where("points > #{old_pontuation}").order("points ASC").first
  last_badge_point = self.badges.last.try('points')
  last_badge_point ||= 0

  if next_badge
    percentage      = (old_pontuation - last_badge_point)*100/(next_badge.points - last_badge_point)
    points          = next_badge.points - old_pontuation
    next_badge_info = {
                        :badge      => next_badge,
                        :points     => points,
                        :percentage => percentage
                      }
  end
end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable, :omniauth_providers => [:facebook]
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def self.from_omniauth
    where(provider: auth.provider , uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
      # user.image = auth.info.image 
    end
    
  end
  def set_default_role
    self.role ||= :user
  end
end
