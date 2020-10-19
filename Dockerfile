FROM nikolaik/python-nodejs:latest

# create workdir
RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY requirements.txt .
COPY package.json .

# python deps
RUN pip install --upgrade pip
RUN pip install --upgrade -r requirements.txt

# node deps
RUN npm update -g npm
RUN npm install

# make work tree
COPY ./src/ ./

CMD npx webppl test.wppl
