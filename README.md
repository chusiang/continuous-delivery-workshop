# Continuous Delivery demo for COSCUP 2017 Ⅱ

[![build status](https://gitlab.com/chusiang/coscup2017-cd-demo/badges/master/build.svg)](https://gitlab.com/chusiang/coscup2017-cd-demo/commits/master)

This is a demo of **Continuous Delivery with Ansible and GitLab CI**  for COSCUP 2017 x DevOps Taiwan at 2017/08/05.

## The Demo Pipeline

### Build

Package the htdocs to deb file.

1. Architecture of deb file.

    ```
    $ tree penguin-htdocs
    penguin-htdocs
    ├── DEBIAN
    │   └── control
    └── var
        └── www
            └── html
                └── index.html

    4 directories, 2 files
    ```

1. Build the deb file on GitLab CI.

    ```
    $ dpkg -b penguin-htdocs
    ```

### Deploy

Deploy to staging node, and release to production node with `setup.yml` playbook.

```
$ ansible-playbook deploy.yml
```

### Test

Only test the staging with `test.yml` playbook on localhost.

```
$ ansible-playbook test.yml
```

### Release

Release to production node with `setup.yml` playbook, too.

```
$ ansible-playbook -i production deploy.yml
```

----

## Reference

How to build the deb package.

1. [Deb Package 套件封裝教學 | Soul & Shell Blog](https://blog.toright.com/posts/4434/deb-package-%E5%A5%97%E4%BB%B6%E5%B0%81%E8%A3%9D%E6%95%99%E5%AD%B8.html)
1. [如何製作「deb 檔 (Debian Package)」 | Ubuntu Basic Skill](https://samwhelp.github.io/book-ubuntu-basic-skill/book/content/package/how-to-build-package.html)

How to use the Ansible.

1. [《現代 IT 人一定要知道的 Ansible 自動化組態技巧》．GitHub](https://github.com/chusiang/automate-with-ansible)

## License

Copyright (c) [chusiang][chusiang] from 2017 under the MIT license.

[chusiang]: https://github.com/chusiang/
