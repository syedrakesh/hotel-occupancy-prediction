import mysql.connector
from UTILITIES import config

def dbconnector():
    mydb = None
    try:
        mydb = mysql.connector.connect(
            host=config.MYSQL_HOST,
            port=config.MYSQL_PORT,
            user=config.MYSQL_USERNAME,
            passwd=config.MYSQL_PASSWORD,
            database=config.MYSQL_DBNAME

        )
    except Exception as e:
        pass
    return mydb


#########################################################################################
def update_actual_occupancy(hotel_id,actual_occupancy_date,actual_occupancy):
    sql_query="update t_ai_health set actual_occupancy=%s where hotel_id=%s and occupancy_date=%s"
    mydb = dbconnector()
    mycursor = mydb.cursor(buffered=True)
    try:
        value = (actual_occupancy,hotel_id,actual_occupancy_date,)
        mycursor.execute(sql_query,value)
        mydb.commit()
    except Exception as e:
        mydb.rollback()
        print(e)
    finally:
        if (mydb.is_connected()):
            mycursor.close()
            mydb.close()

def insert_forecast_occupancy(hotel_id,forecast_occupancy_date,forecast_occupancy):
    sql_query="insert ignore into t_ai_health(hotel_id,occupancy_date,forecast_occupancy) values(%s,%s,%s)"
    mydb = dbconnector()
    mycursor = mydb.cursor(buffered=True)
    try:
        value = (hotel_id,forecast_occupancy_date,forecast_occupancy)
        mycursor.execute(sql_query,value)
        mydb.commit()
    except Exception as e:
        mydb.rollback()
        print(e)
    finally:
        if (mydb.is_connected()):
            mycursor.close()
            mydb.close()
def insert_forecast_occupancy_multi(data):
    sql_query="insert ignore into t_ai_health(hotel_id,occupancy_date,actual_occupancy,forecast_occupancy) values(%s,%s,%s,%s)"
    mydb = dbconnector()
    mycursor = mydb.cursor(buffered=True)
    try:
        # value = (hotel_id,data,)
        print("enterrr")
        mycursor.executemany(sql_query,data)
        mydb.commit()
        print("comple")
    except Exception as e:
        mydb.rollback()
        print(e)
    finally:
        if (mydb.is_connected()):
            mycursor.close()
            mydb.close()

def select_occupancy(hotel_id,occupancy_date_from,occupancy_date_to):
    sql_query="select DATE_FORMAT(occupancy_date, '%d-%m-%Y') AS occu_date,actual_occupancy,forecast_occupancy from t_ai_health " \
              "where hotel_id=%s and (occupancy_date>=%s and occupancy_date<=%s) order by occupancy_date"
    mydb = dbconnector()
    mycursor = mydb.cursor()
    try:
        value = (hotel_id,occupancy_date_from,occupancy_date_to)
        mycursor.execute(sql_query,value)
        records = mycursor.fetchall()
        return records
    except Exception as e:
        print(e)
    finally:
        if (mydb.is_connected()):
            mycursor.close()
            mydb.close()
