FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
workdir /app

## Step 2:
# Copy source code to working directory
#copy ./app.py /app/
copy ./requirements.txt /app/
#copy ./model_data /app/model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

## Step 2:
# Copy source code to working directory
copy ./app.py /app/

## Step 4:
# Expose port 80
Expose 80

## Step 5:
# Run app.py at container launch

#ENTRYPOINT [ "python" ]
#CMD [ "app.py" ]

CMD ["python3", "app.py"]

