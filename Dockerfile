FROM python:3.7.4

COPY . /demoapp

WORKDIR /demoapp

RUN python /setup.py requirements

RUN python /demoapp/run_container.py

RUN pip install -r /requirements.txt

CMD [ "python", "/demoapp/run_container.py" ]