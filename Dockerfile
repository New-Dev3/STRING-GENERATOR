FROM New-Dev3/STRING-GENERATOR:slim-buster

#clonning repo 

RUN git clone https://github.com/New-Dev3/STRING-GENERATOR.git /root/generator.py

#working directory 
WORKDIR /root/generator.py

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/STRING-GENERATOR/bin:$PATH"

CMD ["python3","-m","generator.py"]
