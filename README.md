# 湖南工商大学论文模板
---
![card](card.png)
本文参考 [湖南工商大学课程论文latex模板](https://github.com/gatzai/hutb_latex) 、 [湖南工商大学研究生课程论文（模板）2023版](https://gra.hutb.edu.cn/p179/tzgg/20230509/145869.html) 以及 [湖南工商大学硕士学位论文（格式）2022版](https://gra.hutb.edu.cn/xwgl2/137582.jhtml) 三个模板，并使用 [Overleaf](https://www.overleaf.com/) 生成 Latex 模板，本仓库包含以下两个模板：
1. 课程论文模板
2. 硕士学位论文模板

注意：其中《研究生课程论文评定》表格尚未放入课程论文模板中

<!--more-->

## 文件结构说明
---
主要内容在 text 目录下，包括封面，摘要，文章目录，正文章节，
图片资源在 figure 目录下，引用文献在 bibtext 目录下。
文档入口为 main.tex ，是导入相关章节的入口。

文件结构如下：
```tree 
├── bib
│   └── bibtext.bib      % 引用文献
├── figures       % 图片资源
├── style         % 样式设置，导入相关包
├── text          % 主要内容
├── main.tex      % 文档入口
└── SimSun.ttc    % 字体文件，宋体
```

## 使用说明
---
* 导入模板
	进入 [Overleaf](https://www.overleaf.com/) 网站，创建项目，将对应的模板 upload 上去即可
* 内容填写
	在 text 目录下的文件中均有注释说明，替换原有字段即可
* 创建章节
	比如要在 Chapter2 后面创建新的章节 Chapter3：
	1. 在 text 目录下创建 Chapter3.tex，并开始你的写作
	2. 在 main.tex 中对应章节 \input{text/Chapter2} 后续添加 \input{text/Chapter3}

## 待办事项
---
- [ ] 硕士学位论文模板
- [ ] 有一些常量可以全局保存，比如姓名，论文题目等
- [ ] 参考文献无法跳转
- [ ] 完善模板后，提交到官方模板库中


## 更新日志
---
### 2023-05-23
* 完成课程论文模板
* 导入宋体 SimSun.ttc

## 模板预览

### 课程论文模板图片预览

![课程论文](kecheng.jpg)


### 硕士学位论文模板图片预览