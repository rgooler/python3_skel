 #!/bin/bash
docker run --net=host -d --rm --mount src="$(pwd)",target=/app,type=bind python3_skel $*