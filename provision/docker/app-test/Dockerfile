FROM python:3.6.1

MAINTAINER Luis Mayta <@slovacus>

LABEL NAME slides-git4devs
LABEL VERSION 0.1.0

COPY ./requirements/ /usr/src/requirements/
COPY ./requirements.txt /usr/src/requirements.txt

# set working directory to /app/
WORKDIR /usr/src/

# install python dependencies
RUN pip install -r /usr/src/requirements.txt

# Define default command.
CMD ["bash"]
