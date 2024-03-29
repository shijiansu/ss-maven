# Maven 默认 (default) 生命周期

```text
验证 (validate) 验证项目是正确的, 所有必要的信息可用.
初始化 (initialize) 初始化构建状态, 例如设置属性或创建目录.
产生来源 (generate-sources) 生成包含在编译中的任何源代码.
流程源 (process-sources) 处理源代码, 例如过滤任何值.
生成资源 (generate-resources) 生成包含在包中的资源.
流程资源 (process-resources) 将资源复制并处理到目标目录中, 准备打包.
编译 (compile) 编译项目的源代码.
工艺类 (process-classes) 从编译后处理生成的文件, 例如对Java类进行字节码增强.
生成测试来源 (generate-test-sources) 生成包含在编译中的任何测试源代码.
流程测试来源 (process-test-sources) 处理测试源代码, 例如过滤任何值.
生成测试资源 (generate-test-resources) 创建测试资源.
流程测试资源 (process-test-resources) 将资源复制并处理到测试目标目录中.
测试编译 (test-compile) 将测试源代码编译到测试目标目录中
流程检验类 (process-test-classes) 从测试编译中处理生成的文件, 例如对Java类进行字节码增强. 对于Maven 2.0.5及以上版本.
测试 (test) 使用合适的单元测试框架运行测试. 这些测试不应该要求代码被打包或部署.
制备包 (prepare-package) 在实际包装之前, 执行必要的准备包装的操作. 这通常会导致打包的处理版本的包. (Maven 2.1及以上)
打包 (package) 采取编译的代码, 并以其可分发的格式 (如JAR) 进行打包.
预集成测试 (pre-integration-test) 在执行集成测试之前执行所需的操作. 这可能涉及诸如设置所需环境等.
集成测试 (integration-test) 如果需要, 可以将该包过程并部署到可以运行集成测试的环境中.
整合后的测试 (post-integration-test) 执行集成测试后执行所需的操作. 这可能包括清理环境.
校验 (verify) 运行任何检查以验证包装是否有效并符合质量标准.
安装 (install) 将软件包安装到本地存储库中, 以作为本地其他项目的依赖关系.
部署 (deploy) 在集成或发布环境中完成, 将最终软件包复制到远程存储库, 以与其他开发人员和项目共享.
```
