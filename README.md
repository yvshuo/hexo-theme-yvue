# Yvue

**This Project is still under developement!**

## Version
Beta 0.1

## Introduction

A vue site theme for [Hexo].

- [Preview](https://yvshuo.github.io/blog/)

## Installation

### Install

``` bash
$ git clone https://github.com/yvshuo/hexo-theme-yvue.git themes/yvue
```

**Yvue requires Hexo 2.4 and above.**

### Enable

Modify `theme` setting in `_config.yml` to `yvue`.

### Update

``` bash
cd themes/yvue
git pull
```

## Configuration

``` yml
# Site
title: 香辣猪蹄儿
subtitle: 认认真真写代码，<br/>开开心心吃猪蹄。
description: 余硕的个人博客。认认真真写代码，开开心心吃猪蹄。
author: yvshuo
language: zh-CN
timezone:

# URL
## If your site is put in a subdirectory, set url as 'http://yoursite.com/child' and root as '/child/'
url: http://yvshuo.github.io
root: /blog/
permalink: :year/:month/:day/:title/
permalink_defaults:

# Directory
source_dir: source
public_dir: public/blog
tag_dir: tags
archive_dir: archives
category_dir: categories
code_dir: downloads/code
i18n_dir: :lang
skip_render:

# Writing
new_post_name: :title.md # File name of new posts
default_layout: post
titlecase: false # Transform title into titlecase
external_link: true # Open external links in new tab
filename_case: 0
render_drafts: false
post_asset_folder: false
relative_link: false
future: true
highlight:
  enable: true
  line_number: false
  auto_detect: true
  tab_replace:

# Category & Tag
default_category: uncategorized
category_map:
tag_map:

# Date / Time format
## Hexo uses Moment.js to parse and display date
## You can customize the date format as defined in
## http://momentjs.com/docs/#/displaying/format/
date_format: YYYY-MM-DD
time_format: HH:mm:ss

# Pagination
## Set per_page to 0 to disable pagination
per_page: 6
pagination_dir: page

# Extensions
## Plugins: https://hexo.io/plugins/
## Themes: https://hexo.io/themes/
theme: yvshuo

# Deployment
## Docs: https://hexo.io/docs/deployment.html
deploy:
  type: git
  repo: git@github.com:yvshuo/yvshuo.github.io.git
  branch: master

feed:
    type: atom
    path: atom.xml
    limit: 100
```
