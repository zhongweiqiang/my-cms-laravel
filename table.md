用户表

## zh_users

|      field      |       type       | description  | is_null |    default    |
| :-------------: | :--------------: | :----------: | :-----: | :-----------: |
|       id        | int(10) unsigned |    主键id    |   no    |               |
|      name       |   varchar(50)    |    用户名    |   no    |      ''       |
|    password     |   varchar(255)   |   用户密码   |   no    |      ''       |
|     role_id     |      int(1)      | 角色id(外键) |   no    |      ''       |
|     status      |  enum('1', '2')  |   账户状态   |   no    | 1(1启用2禁用) |
| last_login_time |     datetime     |   登陆时间   |   yes   |     null      |
|  last_login_ip  |   varchar(15)    |    登陆ip    |   yes   |     null      |
| remember_token  |   varchar(255)   |  登陆token   |   yes   |     null      |
|   created_at    |    timestamp     |   创建时间   |   yes   |     null      |
|   updated_at    |    timestamp     |   修改时间   |   yes   |     null      |

## zh_roles

|    field    |       type       | description | is_null | default |
| :---------: | :--------------: | :---------: | :-----: | :-----: |
|     id      | int(10) unsigned |   主键id    |   no    |  null   |
|    name     |   varchar(100)   |  角色名称   |   no    |  null   |
| description |   varchar(300)   |  角色描述   |   no    |  null   |
| created_at  |    timestamp     |  创建时间   |   yes   |  null   |
| updated_at  |    timestamp     |  修改时间   |   yes   |  null   |

## zh_resources(菜单与页面元素表)

|   field    |       type       |       description        | is_null | default |
| :--------: | :--------------: | :----------------------: | :-----: | :-----: |
|     id     | int(10) unsigned |          主键id          |   no    |  null   |
| parent_id  | int(10) unsigned |          父级id          |   no    |    0    |
|   title    |   varchar(50)    |         资源名称         |   no    |  null   |
|    slug    |   varchar(50)    |         资源标识         |   no    |  null   |
|    type    |  enum('m', 'e')  | 资源类型(m菜单e页面元素) |   no    |  null   |
|    path    |   varchar(50)    |         资源路径         |   yes   |  null   |
|    icon    |   varchar(50)    |         资源图标         |   yes   |  null   |
|   order    | tinyint unsigned |         资源排序         |   yes   |  null   |
| created_at |    timestamp     |         创建时间         |   yes   |  null   |
| updated_at |    timestamp     |         修改时间         |   yes   |  null   |

```sql
alter table `zh_menus` add constraint `zh_menus_id_foreign` foreign key (`parent_id`) references `zh_menus` (`id`)
```



## zh_role_resource

|    field    |     type     | description | is_null | default |
| :---------: | :----------: | :---------: | :-----: | :-----: |
|   role_id   | int unsigned |   角色id    |   no    |  null   |
| resource_id | int unsigned |   资源id    |   no    |  null   |

>role_resource需要经常查询，将其设为主键`PRIMARY KEY (`role_id`,`element_id`)`
>
>修改为id, role_id, menu_Id, menu_id存储所有数据，

## permissions

|    field    |      type      |     description      | is_null | default  |
| :---------: | :------------: | :------------------: | :-----: | :------: |
|     id      |  int unsigned  |        主键id        |   no    |   null   |
|  parent_id  |  int unsigned  |        父级id        |   no    |   null   |
|    name     |  varchar(100)  |       权限名称       |   no    |   null   |
|    slug     |  varchar(100)  |       权限标识       |   no    |   null   |
|    type     | enum('m', 'a') | 权限类型(路由，数据) |   yes   |   null   |
|     uri     |  varchar(100)  |       权限uri        |   no    |   null   |
|   method    |  varchar(10)   |       请求方式       |   no    |   null   |
| description |  varchar(100)  |       权限描述       |         |          |
| created_at  |   timestamp    |                      |   yes   | 创建时间 |
| updated_at  |   timestamp    |                      |   yes   | 修改时间 |
|             |                |                      |         |          |

权限需要树状列表，所系需要parent_id，去掉type，只有路由权限，数据权限单独放在一张表里

```sql
alter table `zh_perms` add constraint `zh_perms_id_foreign` foreign key (`parent_id`) references `zh_perms` (`id`);
```



## role_permission

|     field     |     type     | description | is_null | default |
| :-----------: | :----------: | :---------: | :-----: | :-----: |
|    role_id    | int unsigned |   角色id    |   no    |  null   |
| permission_id | int unsigned |   权限id    |   no    |  null   |

>PRIMARY KEY (`role_id`,`permission_id`)

> 对于menus表, 有id和parent_id，parent_id为主键id的外键，parent_id设为nullable，第一条数据为无父级id，其parent_id为id的值，然后所有无父级id的数据的父级id都是他自己



用户表，角色表，菜单表，角色与菜单中间表，权限表，角色与权限中间表