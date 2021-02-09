#docker run -it --rm -p 5000:5000 merly:1.0.2-alpine
from neomatrixcode/merly:1.0.2-alpine
ADD ./* src/
WORKDIR /src
CMD julia app.jl