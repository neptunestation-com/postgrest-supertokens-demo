FROM postgres:16
RUN apt-get update -y && apt-get install -y postgresql-plpython3-16
# apt-get install -y python3 
# apt-get install -y python3-pip 
# pip3 install supertokens-python --break-system-packages

