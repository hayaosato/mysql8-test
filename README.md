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

<img width="432" alt="2018-06-07 22 23 56" src="https://user-images.githubusercontent.com/20217092/41202027-349c2276-6cfe-11e8-992c-85a79e769b60.png">

<img width="441" alt="2018-06-10 22 36 16" src="https://user-images.githubusercontent.com/20217092/41202061-bc583182-6cfe-11e8-9617-7332f52e3f81.png">
