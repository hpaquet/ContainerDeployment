FROM python:3.7.4

COPY . /demoapp

WORKDIR /demoapp

RUN pip install -r requirements.txt

CMD [ "python", "/demoapp/run_container.py" ]