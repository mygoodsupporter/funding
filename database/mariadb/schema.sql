create table member
(
    m_id       varchar(255)     not null,
    m_password varchar(255)     not null,
    m_name     varchar(255)     not null,
    m_phone    varchar(255)     not null,
    m_email    varchar(500)     null,
    ENABLED    bit default b'1' null
);

create table authority
(
    m_id      varchar(255),
    authority varchar(255)
);

CREATE TABLE proposal
(
    id            BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
    member_id     VARCHAR(255) NOT NULL,
    title         VARCHAR(255) NOT NULL,
    description   VARCHAR(255) NOT NULL,
    target_amount INT(11)      NOT NULL,
    status        VARCHAR(255) NOT NULL
);
