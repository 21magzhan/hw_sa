FROM python:3.7-alpine
EXPOSE 8000
WORKDIR /pr_back
COPY requirements.txt /pr_back
RUN pip3 install -r requirements.txt --no-cache-dir
COPY . /pr_back
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]