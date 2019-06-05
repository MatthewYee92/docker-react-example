#!/bin/bash
docker build -f Dockerfile.dev -t reacttest .
docker run -v /app/node_modules -v $(pwd):/app -it reacttest npm run test