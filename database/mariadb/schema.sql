create table user
(
    id         bigint(20) PRIMARY KEY AUTO_INCREMENT,
    username       varchar(255)     UNIQUE not null,
    password varchar(255)     not null,
    name     varchar(255)     not null,
    phone    varchar(255)     not null,
    email    varchar(500)     null,
    ENABLED    bit default b'1' null
);

create table authority
(
    username      varchar(255),
    authority varchar(255)
);

create table project
(
    id bigint(20) primary key auto_increment,
    user_id bigint(20) not null,
    title varchar(255) null,
    subtitle varchar(255) not null,
    goal_amount int(10) null,
    current_amount int(10) null,
    status varchar(255) not null,
    start_date date,
    end_date date,
    constraint project_user_user_id_fk
        foreign key (user_id) references user (id)
);

create table card
(
    id bigint auto_increment primary key,
    user_id varchar(255) null,
    card_number varchar(255) null,
    expired_date varchar(255) null,
    card_password varchar(255) null,
    date_of_birth varchar(255) null
);