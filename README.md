# fc-game-web

## From
`代码来自https://echeverra.cn/bawang`

### dockerfile编译

`docker build -t fc-game-web:latest .`

### 运行镜像

`docker run -d --name fc-game-web --restart=always -p 2063:80 -v /data/fc-game-web/roms:/fc-game-web/roms fc-game-web:latest`

### roms目录映射
`下载roms:https://github.com/wang-zhix/fc-game-web/releases/tag/roms`
`解压roms.tar.gz到/data/fc-game-web目录下`