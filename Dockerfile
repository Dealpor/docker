#base Image
FROM ubuntu

#working folder
WORKDIR /app

#copy requirements
COPY requirements.txt /app

#copy your django project code
COPY myproject /app

ENV PIP_BREAK_SYSTEM_PACKAGES 1
#insatll from requirement
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd myproject

#Expose port Djnago uses
EXPOSE 8000

#
ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver"]


