import os
import time

# Path to the file/directory
path = r"./logs"
days = 15

# converting days to seconds
# time.time() returns current time in seconds

seconds = time.time() - (days * 24 * 60 * 60)

#print(f'{days} days {seconds}')
#print(os.listdir(path))

for file in (os.listdir(path)):

    pathfile="./logs/"+file  

# Both the variables would contain time
# elapsed since EPOCH in float
    ti_c = os.path.getctime(pathfile)
    ti_m = os.path.getmtime(pathfile)
    if seconds >= ti_c:
     # Converting the time in seconds to a timestamp

      c_ti = time.ctime(ti_c)
      m_ti = time.ctime(ti_m)
      os.remove(pathfile)
      print(f"The file located at the path {pathfile} was deleted because was created at {c_ti} and was last modified at {m_ti}")

#print(f"The file located at the path {pathfile} was created at {c_ti} and was last modified at {m_ti}")