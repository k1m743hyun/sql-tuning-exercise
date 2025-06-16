import pymysql


def execute_db(path):
    db = pymysql.connect(
        host='localhost',
        port=3306,
        user='order',
        passwd='order',
        db='order_db',
        charset='utf8'
    )

    try:
        with db.cursor() as cursor:
            with open(path, 'r', encoding='UTF8') as file:
                for sql in file.read().split(';')[:-1]:
                    print(sql)
                    cursor.execute(sql)
                    db.commit()
                    print('=' * 50)
    finally:
        db.close()


if __name__ == '__main__':
    execute_db('./init/schema.sql')
    execute_db('./init/data.sql')
