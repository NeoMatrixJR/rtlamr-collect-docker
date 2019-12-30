FROM golang:latest 
RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect
RUN cd bin/bin/
RUN ls -lah
RUN chmod a+x ./rtlamr*
CMD ["./rtlamr -server=$RTLSERVER | ./rtlamr-collect"]
