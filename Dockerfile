FROM python

# Add requirements file in the container
COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

# Add source code in the container
COPY app.py ./app.py

# Define container entry point (could also work with CMD python main.py)
CMD ["python", "app.py" ]
