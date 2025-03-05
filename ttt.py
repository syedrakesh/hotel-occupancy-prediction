import datetime

with open('myfile.txt', 'a') as file:
    file.write(datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")+"\n")

