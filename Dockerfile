FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
RUN  mkdir -m 755 /home/web

## Step 2:
# Copy source code to working directory
COPY . /home/web
WORKDIR /home/web

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN python3 -m venv ~/.devops
RUN pip install --upgrade pip && pip install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python3", "app.py" ]
