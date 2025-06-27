CREATE TABLE user
(
    id          bigint                                                           NOT NULL COMMENT '用户ID' PRIMARY KEY,
    username    varchar(50)                                                      NOT NULL COMMENT '用户名',
    nickname    varchar(50)                                                      NOT NULL COMMENT '用户昵称',
    password    varchar(255)                                                     NOT NULL COMMENT '用户密码',
    status      ENUM ('ENABLE', 'DISABLE')                                       NOT NULL COMMENT '用户状态',
    role        ENUM ('ADMIN', 'USER')                                           NOT NULL COMMENT '用户角色',
    create_time timestamp  DEFAULT CURRENT_TIMESTAMP                             NOT NULL COMMENT '创建时间',
    update_time timestamp  DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL COMMENT '更新时间',
    is_deleted  tinyint(1) DEFAULT 0                                             NOT NULL COMMENT '逻辑删除'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci COMMENT '用户信息表';

-- 用户名唯一索引
CREATE UNIQUE INDEX users_username_uindex ON user (username);

-- 添加昵称索引
CREATE INDEX users_nickname_index ON user (nickname);