# How to start

- 官网推荐的 - <https://maven.apache.org/skins/index.html>, 默认是
  - <https://maven.apache.org/skins/maven-default-skin/>
  - <https://maven.apache.org/skins/maven-fluido-skin/>
- 最简单配置 - 在src/site/site.xml里面定义的skin, 例如

```xml
<project>
  <skin>
    <groupId>org.apache.maven.skins</groupId>
    <artifactId>maven-default-skin</artifactId>
    <version>1.3</version>
  </skin>
</project>
```

这个skin是在`Maven site`插件里面用的, 主要用法还是`Maven site`息息相关, 例如

- 在site.xml里面的配置, 是跟从`Maven site`的配置
  - <https://maven.apache.org/plugins/maven-site-plugin/examples/creating-content.html>
  - <https://maven.apache.org/plugins/maven-site-plugin/examples/sitedescriptor.html>
- 一般上都会在`Maven site`插件的依赖加上site.xml里面`<skin>`同样的依赖
