#!/bin/bash
# виконується тільки в хмарній сесії
[ "$CLAUDE_CODE_REMOTE" != "true" ] && exit 0
cd "$CLAUDE_PROJECT_DIR" || exit 0
chmod +x mvnw
./mvnw -B -q dependency:go-offline || true
exit 0
