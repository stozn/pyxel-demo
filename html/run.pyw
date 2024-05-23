import webbrowser
import subprocess
import time

# 启动HTTP服务器
server_process = subprocess.Popen(["python", "-m", "http.server", "8080"])

# 等待一段时间确保服务器已经启动
time.sleep(1)

# 在默认浏览器中打开页面
webbrowser.open("http://localhost:8080")

# 你的服务器地址可能会有所不同，根据实际情况修改URL
