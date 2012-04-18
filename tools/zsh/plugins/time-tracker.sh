START_TIME=0
IGNORE_TIME_TRACKING="yes"
CURRENT_COMMAND="?"
TIME_TO_NOTIFY=60

report_time()
{
  echo ""
  echo "command '$CURRENT_COMMAND' completed in $1 seconds"
}

preexec()
{
  if [ -n "$TTY" ]; then
    START_TIME="$SECONDS"
    IGNORE_TIME_TRACKING=""
    CURRENT_COMMAND="$2"
  fi
}

precmd()
{
  local xx
  if [ -n "$TTY" ]; then
    if [ "x$IGNORE_TIME_TRACKING" = "x" ]; then
      IGNORE_TIME_TRACKING="yes"
      xx=$(($SECONDS-$START_TIME))
      if [ "$xx" -gt "$TIME_TO_NOTIFY" ]; then
        report_time $xx
      fi
    fi
  fi
}
