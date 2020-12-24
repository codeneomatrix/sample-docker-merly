#docker run -it --rm -p 5000:5000 merly:0.2.1-alpine
from codeneomatrix/merly:0.2.1-alpine
ADD ./* src/
WORKDIR /src
#RUN julia package.jl
CMD julia app.jl