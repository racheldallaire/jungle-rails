class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def email(order)
    @order = order
    @url  = "http://0.0.0.0:3000/order/#{order.id}"
    mail(to: @email, subject: "Your Jungle Purchase (##{order.id}) has been Confirmed")
  end
end
