FROM python:3

WORKDIR /src

COPY requirements.txt .

RUN pip install --upgrade pip
RUN pip install --upgrade -r requirements.txt

COPY /src .

CMD python test.py
