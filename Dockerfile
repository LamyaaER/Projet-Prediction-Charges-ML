FROM python:3.11
RUN pip install --upgrade pip
RUN pip install virtualenv
ENV VIRTUAL_ENV=/venv
RUN virtualenv venv -p python3
ENV PATH="VIRTUAL_ENV/bin:$PATH"
WORKDIR /app
ADD . /app
# Install dependencies
RUN pip install -r requirements.txt
RUN pip install markupsafe==2.0.1 --force-reinstall
# Expose port
EXPOSE 5000
# Run the application:
CMD ["python", "app.py"]