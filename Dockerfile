FROM nikolaik/python-nodejs:python3.7-nodejs14-slim

WORKDIR /src

# python deps
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --upgrade -r requirements.txt

# node deps
RUN npm update -g npm

# make work tree
COPY src/ ./

#CMD npx webppl test.wppl
CMD python test.py
