#!/bin/bash
# 参考文献
## 官网 - 有命令汇总 - http://www.mojohaus.org/versions-maven-plugin/
## 实用教程 - https://www.baeldung.com/maven-dependency-latest-version
## 自定义Rule排除非最终版本 - https://stackoverflow.com/questions/38146719/how-to-display-dependency-updates-only-for-release-versions

# 常用命令
# ----------------------------------------
# 依赖库
## 显示依赖库的更新信息
./mvnw versions:display-dependency-updates
## 跟新为最新的RELEASE版本 -> 产生pom.xml.versionsBackup, 再次执行不会覆盖
./mvnw versions:use-latest-releases # 升级
./mvnw versions:use-latest-releases -DenerateBackupPoms=false -DprocessDependencyManagement=false -DallowMajorUpdates=false
./mvnw versions:commit # 删除pom.xml.versionsBackup (相当于提交了跟新)
./mvnw versions:revert # 使用pom.xml.versionsBackup覆盖pom.xml (相当于回滚)

./mvnw versions:update-parent # 跟新父版本, e.g. 在SpringBoot pom.xml parent情景使用 -> 不产生pom.xml.versionsBackup

./mvnw versions:force-releases # 移除SNAPSHOT, 使用当前的RELEASE版本或者最近前一个的RELEASE版本
./mvnw versions:use-releases # 使用当前的RELEASE版本; 区别应该是不会自动使用前一个的RELEASE版本, 如果当前没有

# 插件
./mvnw versions:display-plugin-updates

# 报表
./mvnw versions:dependency-updates-report # 生成在target/site下面
./mvnw versions:plugin-updates-report # 生成在target/site下面
./mvnw versions:compare-dependencies # 比较当前版本与dependency management

# 针对项目本身
# ----------------------------------------
# 更新项目版本 -> 产生pom.xml.versionsBackup, 再次执行不会覆盖
## http://www.mojohaus.org/versions-maven-plugin/set-mojo.html
newVersion=
./mvnw versions:set -DnewVersion=${newVersion}
./mvnw versions:set -DremoveSnapshot=true -DgenerateBackupPoms=false # 移除版本snapshot

# 其他命令
# ----------------------------------------
# 依赖库

## 跟新为下一RELEASE版本 -> 产生pom.xml.versionsBackup, 再次执行不会覆盖
./mvnw versions:use-next-releases
