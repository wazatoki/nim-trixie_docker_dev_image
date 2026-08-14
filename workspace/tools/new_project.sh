#!/usr/bin/env bash
set -e
PROJECT_NAME="${1:-my_project}"

mkdir -p "${PROJECT_NAME}/src/${PROJECT_NAME}/domain/"{entities,value_objects,services,repositories,exceptions}
mkdir -p "${PROJECT_NAME}/src/${PROJECT_NAME}/usecases"
mkdir -p "${PROJECT_NAME}/src/${PROJECT_NAME}/adapters/"{controllers,repositories,presenters}
mkdir -p "${PROJECT_NAME}/src/${PROJECT_NAME}/infrastructure/"{db,web}
mkdir -p "${PROJECT_NAME}/tests"

cat <<'EOF' > "${PROJECT_NAME}/src/${PROJECT_NAME}.nim"
proc main() =
  echo "Hello from Clean Architecture Nim Project!"

when isMainModule:
  main()
EOF

cat <<EOF > "${PROJECT_NAME}/${PROJECT_NAME}.nimble"
version       = "0.1.0"
author        = "Anonymous"
description   = "Clean Architecture Nim Project"
license       = "MIT"
srcDir        = "src"
bin           = @["${PROJECT_NAME}"]

requires "nim >= 2.0.0"
EOF