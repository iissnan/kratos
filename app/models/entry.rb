class Entry < ActiveRecord::Base
  belongs_to :issue

  RE_URL = /https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&\/\/=]*)?/i
  validates :url, presence: true,
                  format: { with: RE_URL }

  validates :title, presence: true
end
