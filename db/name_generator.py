#!/usr/bin/python3

import json, random

with open('boy_names_2016.json', 'r') as f:
    boys_string = f.read()
with open('girl_names_2016.json', 'r') as f:
    girls_string = f.read()
with open('last.names.json', 'r') as f:
    last_string = f.read()

boys = json.loads(boys_string)['names']
girls = json.loads(girls_string)['names']
last_names = json.loads(last_string)
first_names = boys + girls
print(len(first_names))
print(len(last_names))
names = []
for i in range(100):
    first = first_names[random.randint(0,2000)]
    last = last_names[random.randint(0,10000)]
    names.append({"first": first, "last": last})
out = open('names.json', 'w')
out_string = json.dumps(names)
out.write(out_string)
