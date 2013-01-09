class Applicant < ActiveRecord::Base
  scope :todays_interview,where( 'scheduleofinterview between ? and ?', Date.today, Date.tomorrow)
  attr_accessible :email, :interviewers, :name, :role, :round, :scheduleofinterview, :sourcingpartner, :status, :technology, :cv
  has_attached_file :cv,
                    :url  => "/assets/products/:id/original/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/original/:basename.:extension"

  validates_attachment_content_type :cv,
      :content_type => [ 'application/pdf','application/msword'],
      :message => "only pdf and word files are allowed"
      validates :email, :uniqueness => true
    validates :email, :format => { :with => /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/,
    :message => "Wrong Format" }
      validates_presence_of :email, :interviewers, :name, :role, :round, :scheduleofinterview, :sourcingpartner, :status, :technology, :cv

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
