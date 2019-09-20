#!/bin/bash

:'Reference:
	https://towardsdatascience.com/a-beginners-guide-to-rasa-nlu-for-intent-classification-and-named-entity-recognition-a4f0f76b2a96
'

model=$1

#--- TRAINING

# Change data format
rasa data convert nlu --data data/nlu.md --out data/nlu.json -f json

# Train rasa model
rasa train nlu

#--- Starting SERVER

rasa run --enable-api -m $model
