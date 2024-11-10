import streamlit as st
import psycopg2
from dotenv import load_dotenv
import os
import pandas as pd
load_dotenv()

@st.cache_resource
def getdata():
    conn = psycopg2.connect(host=os.environ['HOST'],
                        database=os.environ['DATABASE'],
                        user=os.environ['USER'],
                        password=os.environ['PASSWORD'])
    with conn:
        with conn.cursor() as cursor:
            sql='''
            SELECT country,a_market.name,date,adj_close,volume
            FROM a_stock JOIN a_market ON a_stock.name = a_market.name
            WHERE country = '台灣';
            '''
            cursor.execute(sql)
            all_data = cursor.fetchall()
    conn.close()
    return all_data

@st.cache_resource
def get_country():
    conn = psycopg2.connect(host=os.environ['HOST'],
                            database=os.environ['DATABASE'],
                            user=os.environ['USER'],
                            password=os.environ['PASSWORD'])
    with conn:
        with conn.cursor() as cursor:
            sql='''
            SELECT * FROM a_market
            '''
            cursor.execute(sql)
            all_country = cursor.fetchall()
    conn.close()
    input_dict = dict(all_country)
    return input_dict.values()

def user_select():
    print('使用者選擇了')
    print(st.session_state.stocks)

st.title('世界大盤分析')
default_country = '台灣'
with st.sidebar:
    st.title('請選擇股票市場:')

    st.multiselect("請選擇",get_country(),
                             default=default_country,
                             placeholder="請選擇市場",
                             label_visibility="hidden",
                             key='stocks',
                             on_change=user_select)
    st.write(default_country)
    #st.write(options)

df = pd.DataFrame(getData(('台灣','香港恒生')),columns=['國家','代號','日期','收盤價','成交量'])
df['收盤價'] = df['收盤價'].astype('float').round(decimals=2)
st.line_chart(data=df,x='日期',y='收盤價',color='國家')