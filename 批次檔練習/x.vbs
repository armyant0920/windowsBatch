set diao=createobject("wmplayer.ocx")
diao.url="C:\Users\2102062\Desktop\批次檔練習\貝多芬第三樂章-悲愴.mp3"
wscript.sleep 1200
wscript.sleep diao.currentMedia.duration *1000
wscript.sleep 1000
