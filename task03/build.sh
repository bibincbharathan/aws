
#!/bin/bash

set -x

# setup default values, use environment variables to override
# for example: export LESSON=lesson150 && ./build.sh
VER="${VER:-latest}"
LESSON="${LESSON:-lesson000}"

# kafka-agent
docker build -t aputra/kafka-agent-${LESSON}:${VER} -f app/kafka-agent.Dockerfile --platform linux/amd64 app
docker push aputra/kafka-agent-${LESSON}:${VER}
