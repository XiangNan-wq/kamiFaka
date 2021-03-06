FROM python

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python db_init.py

EXPOSE 5000

CMD [ "python", "./app.py" ]