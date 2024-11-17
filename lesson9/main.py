from dotenv import load_dotenv
import streamlit as st
from tools import get_data
load_dotenv()

@st.dialog("目前發生問題,請稍後再試")
def alert():
        st.write('連線失敗')
        st.stop()

with st.spinner('下載資料中...'):
    get_data()
#下載成功時顯示
#    st.success("下載完成")
#    get_data()

alert()
st.write('顯示頁面')