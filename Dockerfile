FROM python:3 

COPY requirements-simple.txt /
RUN pip install -r /requirements-simple.txt
 
RUN mkdir /myworkdir
WORKDIR /myworkdir
COPY ./ ./
 
EXPOSE 8080
CMD ["python", "./app.py"]