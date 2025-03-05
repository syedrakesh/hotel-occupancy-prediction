#!/usr/bin/env python3

import logging
from datetime import datetime

# Configure logging
logging.basicConfig(filename='/python-scripts/hoteloccupancyprediction/cron_job.log', level=logging.DEBUG, format='%(asctime)s - %(message)s')

def main():
    # Log the current date and time
    logging.debug('Cron job executed')

if __name__ == "__main__":
    main()