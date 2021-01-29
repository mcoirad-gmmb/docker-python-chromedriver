import logging
import socket
from logging.handlers import SysLogHandler
class ContextFilter(logging.Filter):
    hostname = socket.gethostname()
    def filter(self, record):
        record.hostname = ContextFilter.hostname
        return True

class Logger():
    def __init__():
        syslog = SysLogHandler(address=('logs4.papertrailapp.com', 52027))
        syslog.addFilter(ContextFilter())
        format = '%(asctime)s %(hostname)s YOUR_APP: %(message)s'
        formatter = logging.Formatter(format, datefmt='%b %d %H:%M:%S')
        syslog.setFormatter(formatter)
        self.logger = logging.getLogger()
        self.logger.addHandler(syslog)
        self.logger.setLevel(logging.INFO)
        # How to log something:
        # logger.info("This is a message")
