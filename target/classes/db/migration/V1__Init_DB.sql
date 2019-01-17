create sequence hibernate_sequence start 1 increment 1;

create table comment (
    id int8 not null,
    date timestamp,
    filename varchar(255),
    instrument_id int8,
    text varchar(2048) not null,
    user_id int8,
    primary key (id)
);

create table instrument (
    id int8 not null,
    description varchar(1024),
    price float4 not null,
    title varchar(255),
    type varchar(255),
    primary key (id)
);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists comment
    add constraint comment_user_fk
    foreign key (user_id) references usr;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references usr