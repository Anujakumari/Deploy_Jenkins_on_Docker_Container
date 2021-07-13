#!bin/bash/python3

import smtplib

server=smtplib.SMTP('smtp.gmail.com' , 587)
server.starttls()

server.login("sender_mail", "password")
subject = 'Jenkins_Task'

msg = "Your code has been failed"

server.sendmail("sender_mail", "receiver_mail", msg)
print("Email has been sent successfully !")
server.quit()
