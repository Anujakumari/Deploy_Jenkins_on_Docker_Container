#!bin/bash/python3

import smtplib

server=smtplib.SMTP('smtp.gmail.com' , 587)
server.starttls()

server.login("anujapathak998@gmail.com", "Kumari123#Suman")
subject = 'Jenkins_Task'

msg = "Your code has been failed"

server.sendmail("anujapathak998@gmail.com", "anujapathak999@gmail.com", msg)
print("Email has been sent successfully !")
server.quit()
