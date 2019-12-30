FROM golang:latest 
RUN go get github.com/bemasher/rtlamr
RUN go get github.com/bemasher/rtlamr-collect
RUN cd bin/
RUN ls -lah
RUN cd bin/
RUN ls -lah
CMD /bin/bash
#RUN chmod a+x ./rtlamr*
#CMD ["./rtlamr -server=$RTLSERVER | ./rtlamr-collect"]
