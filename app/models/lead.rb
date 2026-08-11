# frozen_string_literal: true

# A marketing lead captured from the public Beacon landing page signup.
# Deliberately NOT organization-scoped: the landing page is public and a
# visitor's signup must not require a workspace.
class Lead < ApplicationRecord
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP },
    length: { maximum: 254 }, uniqueness: { case_sensitive: false }
  validates :name, length: { maximum: 200 }

  before_validation :normalize_fields

  scope :ordered, -> { order(created_at: :desc, id: :desc) }

  private

  def normalize_fields
    self.email = email.to_s.strip.downcase.presence
    self.name = name.to_s.strip.presence
    self.source = source.to_s.strip.presence || "landing-page"
  end
end
