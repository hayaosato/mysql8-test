# mysql8-test
Ubuntu16.04でのmysql8.0.11の検証レポジトリ

## requirements
- Ubuntu 16.04
- mysql 8.0.11

ubuntu16.04のdockerイメージを事前にpullしておいてください<br>
`docker pull ubuntu:16.04`

## DockerImage
dockerイメージ
[hayaomunesato/ubuntu_mysql8](https://hub.docker.com/r/hayaomunesato/ubuntu_mysql8/)<br>
`docker pull hayaomunesato/ubuntu_mysql8`

## SQL
SQLの直行を用いて10000件のデータをINSERTします。<br>
できるデータは以下のようになります。

<img width="499" alt="mysql8_show_columns" src="https://user-images.githubusercontent.com/20217092/41202170-314846de-6d00-11e8-97bb-e6e3214fcced.png">

<img width="441" alt="2018-06-10 22 36 16" src="https://user-images.githubusercontent.com/20217092/41202061-bc583182-6cfe-11e8-9617-7332f52e3f81.png">


## Reference
- [MySQL 8.0](https://dev.mysql.com/doc/relnotes/mysql/8.0/en/)
- [MySQL8.0.11リリース、今回もまた苦労させられました](https://blog.infobuild.jp/e/?c=201804271620)
- [SQLで大量のテストデータ作成](https://qiita.com/cobot00/items/8d59e0734314a88d74c7)
