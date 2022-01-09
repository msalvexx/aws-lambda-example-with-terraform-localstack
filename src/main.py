from datetime import datetime
import logging

logger = logging.getLogger("Lambda")


def handler(event, context):
  logger.info(f"Lambda triggered at {datetime.now()}.")
  return "ok"