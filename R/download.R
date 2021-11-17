library(synapser)
library(synapserutils)

username <- Sys.getenv("SYNAPSE_USERNAME")
password <- Sys.getenv("SYNAPSE_PASSWORD")
project.id <- Sys.getenv("SYNAPSE_PROJECT_ID")

synLogin(username, password) 
files <- synapserutils::syncFromSynapse(project.id) 
