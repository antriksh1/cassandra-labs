# Generate Sensor data

## ----- config
entries = 100
file_name = 'sensor.data'
keyspace = 'myflix'
table = 'sensors'
## --- end config


import os
import datetime
import random
from myutils import *

start_date = datetime.datetime(2014,1,1,0,0,0)
end_date = datetime.datetime(2014,4,1,0,0,0)


## --- script main
if __name__ == '__main__':
    with open(file_name, "w") as fout:
        print "generating file ", file_name

        fout.write("use %s;\n\n" % keyspace)

        for x in range(1, entries+1):
            sensor_id = "sensor-%s" % random.randint(1,entries)
            timestamp = random_timestamp(start_date, end_date)
            month = timestamp.strftime("%Y-%m")  #2014-04
            temp = round(random.uniform(30,90), 1)
            humidity = random.randint(20,100)

            logline = "INSERT INTO %s(sensor_id, time, temperature, humidity) VALUES('%s', '%s', %s, %s);" % (table, sensor_id, timestamp, temp, humidity)

            # for partitioning by month (bonus lab)
            #logline = "INSERT INTO %s(sensor_id, time, month, temperature, humidity) VALUES('%s', '%s', '%s', %s, %s);" % (table, sensor_id, timestamp, month, temp, humidity)

            #print logline
            fout.write(logline + "\n")
