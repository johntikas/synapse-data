import os

import synapseclient 
import synapseutils 

username = os.getenv("SYNAPSE_USERNAME")
password = os.getenv("SYNAPSE_PASSWORD")
project_id = os.getenv("SYNAPSE_PROJECT_ID")

syn = synapseclient.Synapse() 
syn.login(username, password) 
files = synapseutils.syncFromSynapse(syn, project_id) 
