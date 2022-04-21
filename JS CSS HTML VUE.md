# JS
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

# CSS





# VUE