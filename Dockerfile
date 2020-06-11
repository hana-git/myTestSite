FROM python:3.8.2

RUN mkdir /code/
COPY ./ /code/
WORKDIR /code/

RUN pip install --upgrade pip && \
    pip install pipenv && \
    pipenv --python /usr/local/bin/python
RUN pipenv install

RUN pip install django==3.0.7

CMD python manage.py runserver 0:8000