# Preview all emails at http://localhost:3000/rails/mailers/owner_mailer
class OwnerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/owner_mailer/message
  def message
    OwnerMailer.message
  end

end
