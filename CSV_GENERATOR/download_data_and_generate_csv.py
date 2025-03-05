from DATASOURCE.booking_info_datasource import get_data_bookings
from DATASOURCE.occupancy_rate_datasource import get_data_occupancy
'''first download the data as csv'''
get_data_occupancy()
get_data_bookings()
print('file download completed')
