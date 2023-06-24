FROM python:3.10.9-slim

# copy all the files to the container
COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x /start.sh
CMD ./start.sh