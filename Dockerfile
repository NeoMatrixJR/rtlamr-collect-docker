FROM golang:latest 
RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect
RUN chmod a+x ./bin/rtlamr*
COPY start.sh ./
RUN chmod a+x start.sh
#CMD ["./bin/rtlamr -server=$RTLSERVER | ./bin/rtlamr-collect"]
#CMD start.sh
CMD /bin/bash
