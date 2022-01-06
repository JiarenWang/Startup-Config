export SCCACHE_CACHE_SIZE="50G" 缓存大小
export SCCACHE_DIR="/Volumes/SSD/sccahe" 缓存路径




pyenv global 3.10.0
pyenv global system

git push -v origin refs/heads/wjr:refs/heads/wjr  --force 强推命令


https://github.com/apple/swift/blob/main/docs/HowToGuides/GettingStarted.md
// 更新所有git 默认main分支
utils/update-checkout --clone-with-ssh
更新命令有时会失败,是网络原因. 每次运行前以下代理命令执行一下.
export http_proxy=http://127.0.0.1:1087;export https_proxy=http://127.0.0.1:1087



//查看当前仓库配置信息
git config --local  --list


// 注意设置作者
git config user.name "jiaren wang"
git config user.email "jr.w@foxmail.com"

//git 更改最近提交的作者信息
git commit --amend --reset-author

# 修改最后一次提交的 commit 信息和作者, 可单独修改
git commit --amend --message=" " --author="jiangliheng <jiang_liheng@163.com>"

//压缩N个提交
git rebase -i HEAD~N
# Re-run N times, reformatting each commit.

//格式化第一个commit并提交
git-clang-format HEAD~1
git add .
git commit --amend --no-edit
git rebase --continue
git rebase main

//强制提交
git push origin branch1 -f

# 新建一个分支，并切换到该分支
$ git checkout -b [branch]

# 列出所有本地分支和远程分支
$ git branch -a

# 提交暂存区到仓库区
$ git commit -m [message]


// build 
utils/build-script --skip-build-benchmarks \
  --skip-ios --skip-watchos --skip-tvos --swift-darwin-supported-archs "$(uname -m)" \
  --sccache --release-debuginfo --swift-disable-dead-stripping --test


  // CHECK: [[@LINE-1]]:5 |  @LINE会被文件当前的行数替代  CHECK: 冒号后面的文本都会进行匹配


//test
utils/run-test --lit ../llvm-project/llvm/utils/lit/lit.py \
  ../build/Ninja-RelWithDebInfoAssert/swift-macosx-$(uname -m)/test-macosx-$(uname -m) \
  --filter="refactoring/ConvertAsync/basic.swift" -v

  utils/run-test --lit ../llvm-project/llvm/utils/lit/lit.py \
  ../build/Ninja-RelWithDebInfoAssert/swift-macosx-$(uname -m)/test-macosx-$(uname -m) \
  --filter="Constraints/closures.swift" -v


  ../llvm-project/llvm/utils/lit/lit.py -s -vv \
  ../build/Ninja-RelWithDebInfoAssert/swift-macosx-$(uname -m)/test-macosx-$(uname -m) \
  --filter="SourceKit/DocumentStructure/structure.swift" -v

  Failed Tests (4):
  Swift(macosx-arm64) :: Generics/associated_type_anchor_rdar47605019.swift
  Swift(macosx-arm64) :: Index/kinds.swift
  Swift(macosx-arm64) :: SILGen/convenience_init_peer_delegation.swift
  Swift(macosx-arm64) :: SourceKit/CodeFormat/indent-computed-property.swift
  Swift(macosx-arm64) :: SourceKit/DocumentStructure/structure.swift

  test/Constraints/diagnostics.swift
  test/diagnostics/pretty-printed-diagnostics.swift
  test/expr/closure/closures.swift
  validation-test/compiler_crashers_2_fixed/0119-rdar33613329.swift


 @rintaro Please review [ParseDecl.cpp](asdasd)
 
 
 测试标准
 lit llvm i... tool
 RUN 执行命令
 CHECK 检查 
 一般是 diff 比较差异 或者 Check 检查文本

 // expect-error {{2-2=sadasda}} //第二列后面插入的文本, 用来验证FixIt
 


 C++
 //在这里typename 和class没区别
 template <typename... identifier> func(identifier paramater) 例子:template<typename T> void swap(T&  t1, &T t2) 调用方式  func<int>((a, b),<int>可以省略,因为可以推断类型
 template <class... identifier> func(identifier paramater) 


//C++ 标准库提供了三种智能指针类型：std::unique_ptr、std::shared_ptr 和 std::weak_ptr 智能指针可处理对其拥有的内存的分配和删除
//std::string 字符串
//使用 vector 替代原始数组:
  vector<string> apples;
  apples.push_back("Granny Smith");

//map字典
map<string, string> apple_color;
apple_color["Granny Smith"] = "Green";

//auto
用 auto 替代显式类型名称
C++11 引入了 auto 关键字，以便可将其用于变量、函数和模板声明中。 auto 会指示编译器推导对象的类型，这样你就无需显式键入类型。 当推导出的类型是嵌套模板时，auto 尤其有用：
map<int,list<string>>::iterator i = m.begin(); // C-style
auto i = m.begin(); // modern C++


//用 constexpr 表达式替代宏
#define SIZE 10 // C-style
constexpr int size = 10; // modern C++

//统一初始化 https://docs.microsoft.com/zh-cn/cpp/cpp/welcome-back-to-cpp-modern-cpp?view=msvc-160#uniform-initialization

//Lambda 表达式 等于闭包 https://docs.microsoft.com/zh-cn/cpp/cpp/welcome-back-to-cpp-modern-cpp?view=msvc-160#lambda-expressions
可以将 lambda 表达式 [=](int i) { return i > x && i < y; } 可以读取为“采用类型 int 的单个参数并返回一个布尔值来表示此参数是否大于 x 并且小于 y 的函数”。 请注意，可在 lambda 中使用来自周围上下文的 x 和 y 变量。 [=] 会指定通过值捕获这些变量；换言之，对于这些值，lambda 表达式具有自己的值副本。


//指针 *p
通过访问p->属性

//引用
int &b = a;
此时b就是a的引用，或者称之为别名。如果修改b的值，那么a的值也会相应地发生改变。如b=1,那么a也就会跟着等于1。这种方式在函数传参的时候很常见，如果想函数执行完改变原参数的值，就应该在传参的时候，传入原来的实参的引用。

条款一：指针与引用的区别
指针与引用看上去完全不同（指针用操作符’*’和’->’，引用使用操作符’.’），但是它们似乎有相同的功能。指针与引用都是让你间接引用其他对象。你如何决定在什么时候使用指针，在什么时候使用引用呢？
首先，要认识到在任何情况下都不能用指向空值的引用。一个引用必须总是指向某些对象。因此如果你使用一个变量并让它指向一个对象，但是该变量在某些时候也可能不指向任何对象，这时你应该把变量声明为指针，因为这样你可以赋空值给该变量。相反，如果变量肯定指向一个对象，例如你的设计不允许变量为空，这时你就可以把变量声明为引用。

// C++中函数后面加const代表只读函数 这个函数不会修改任何数据成员(object)

//C++中函数后面加=0表示这个成员函数是纯虚函数，也就是它可以没有定义，只有接口，由它的继承类具体定义它的行为，当然，你也可以给它定义缺省的函数体
一个类里如果包含 ＝0 的纯虚函数，那么这个类就是一个抽象类，它不能具体实例化（不能创建它的对象），而只能由它去派生子类.在基类中实现纯虚函数的方法是在函数原型后加“=0” 。

//c++函数后面加override 指定了这个虚函数是重写的父类的
//c++函数后面加final  这个函数被重写 且无法被子类重写
//c++ virtual 函数
C++多态(polymorphism)是通过虚函数来实现的，虚函数允许子类重新定义成员函数，而子类重新定义父类的做法称为覆盖(override)，或者称为重写。

token tok = nextToken()//这样是拷贝 左右变量没有关联
token &tok = nextToken()//这样是起别名


//诊断信息
所有诊断      DiagnosticsAll.def
语法及类型诊断 DiagnosticsSema.def

宏就两种DIAG和FIXIT,  实现在DiagnosticsCommon.h 
ERROR, WARNING, REMARK都是DIAG

每定义一个DIAG和FIXIT就会生成一个类.

//打印调用栈
void orint_stacktrace() {
  int size = 16;
  void * array[16];
  int stack_num = backtrace(array, size);
  char ** stacktrace = backtrace_symbols(array, stack_num);
  for (int i =0; i < stack_num; ++i) {
  printf("%s\n", stacktrace[i]);
  }
  free(stacktrace);
}

cmd K cmd 0 折叠所有
cmk k cmd J 展开所有
option 上下左右 行上下左右移动

