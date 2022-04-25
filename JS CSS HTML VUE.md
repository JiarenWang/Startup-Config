# ------------------------GO------------------------
国产HTTP框架

# ------------------------JS------------------------
## array
var cars=new Array();
cars[0]="Saab";
var cars=new Array("Saab","Volvo","BMW");
var cars=["Saab","Volvo","BMW"];

//object
var person={firstname:"John", lastname:"Doe", id:5566};
var person = {
  firstName: "John",
  lastName : "Doe",
  id       : 5566,
  fullName : function() {
    return this.firstName + " " + this.lastName;
  }
};

## string
txt.length;
new String("John");不要创建 String 对象。它会拖慢执行速度，并可能产生其他副作用：
JavaScript String 对象: https://www.runoob.com/jsref/jsref-obj-string.html 

## 比较运算符
===	绝对等于（值和类型均相等）
!==	 不绝对等于（值和类型有一个不相等，或两个都不相等）

## for
for (; i<len; i++)
{ 
    document.write(cars[i] + "<br>");
}
for (x in person)  // x 为属性名
{
    txt=txt + person[x];
}

## debug
console.log(c);
dump()

## 声明提升
函数声明和变量声明总是会被解释器悄悄地被"提升"到方法体的最顶部。
JavaScript 初始化不会提升
JavaScript 严格模式(strict mode)不允许使用未声明的变量。

## 程序块作用域
在每个代码块中 JavaScript 

# ------------------------CSS------------------------
    class 选择器
    .center {text-align:center;}

     id 选择器
     #para1
     {
         text-align:center;
         color:red;
     }




# ------------------------VUE------------------------

    <div id="app">
      {{ message }}
    </div>
    var app = new Vue({
      el: '#app',
      data: {
        message: 'Hello Vue!'
      }
    })


    <div id="app-2">
      <span v-bind:title="message">
        鼠标悬停几秒钟查看此处动态绑定的提示信息！
      </span>
    </div>
    var app2 = new Vue({
      el: '#app-2',
      data: {
        message: '页面加载于 ' + new Date().toLocaleString()
      }
    })    

    <div id="app-3">
      <p v-if="seen">现在你看到我了</p>
    </div>
    var app3 = new Vue({
      el: '#app-3',
      data: {
        seen: true
      }
    })

    <div id="app-4">
      <ol>
        <li v-for="todo in todos">
          {{ todo.text }}
        </li>
      </ol>
    </div>
    var app4 = new Vue({
      el: '#app-4',
      data: {
        todos: [
          { text: '学习 JavaScript' },
          { text: '学习 Vue' },
          { text: '整个牛项目' }
        ]
      }
    })  

    <div id="app-5">
      <p>{{ message }}</p>
      <button v-on:click="reverseMessage">反转消息</button>
    </div>
    var app5 = new Vue({
      el: '#app-5',
      data: {
        message: 'Hello Vue.js!'
      },
      methods: {
        reverseMessage: function () {
          this.message = this.message.split('').reverse().join('')
        }
      }
    })

    <div id="app-6">
      <p>{{ message }}</p>
      <input v-model="message">
    </div>
    var app6 = new Vue({
      el: '#app-6',
      data: {
        message: 'Hello Vue!'
      }
    })     


## 组件
    Vue.component('todo-item', {
      // todo-item 组件现在接受一个
      // "prop"，类似于一个自定义 attribute。
      // 这个 prop 名为 todo。
      props: ['todo'],
      template: '<li>{{ todo.text }}</li>'
    })    

    ## v-bind:***  可以写成:***
# ------------------------HTML------------------------

## id 属性规定HTML 元素的唯一的id。 id 在HTML 文档中必须是唯一的。