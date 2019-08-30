# my-vue-template

## Project setup
```
yarn install --registry https://registry.npm.taobao.org
```

### Compiles and hot-reloads for development
```
yarn run serve
```

### Compiles and minifies for production
```
yarn run build
```

### Run your tests
```
yarn run test
```

### Lints and fixes files
```
yarn run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

### .eslintrc.js
项目开发习惯配置文件, 规范了tab等的宽度

### 在vue cli基础上引入的组件
#### normalize.css
解决各浏览器样式差异问题
```
yarn add normalize.css 
```

### JS格式化有问题的
需要安装eslint vs插件解决

### Run on server
docker rm my_vue_template -f && \
docker run -d -it -p 9529:80 --name my_vue_template -e API_URI=http://apimock.niusys.com/my-vue-template/api/ --restart=always hub.niusys.com/practice/my_vue_template:1