#!/usr/bin/python3
import markovify, json

with open('hamlet.txt', 'r') as f:
    text = f.read();

text_model = markovify.Text(text);
dumb_posts = []
for i in range (1000):
    dumb_posts.append(text_model.make_short_sentence(140))
out = open('posts.json', 'w')
out.write(json.dumps(dumb_posts))

