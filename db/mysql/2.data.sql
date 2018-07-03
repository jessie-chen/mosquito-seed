
-- BCryptPasswordEncoder
-- webapp / 000000
INSERT INTO oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove) VALUES ('webapp', 'home,backend,backend2', '$2a$10$4GgPOTZx/Sdne6RwSuynlOfR34q9ykR/Yytt0IlYYX1ZcZCQAj.Hm', 'read,write,all', 'password,client_credentials,authorization_code,refresh_token,implicit', 'http://www.baidu.com/', 'user:create,user:read', null, null, null, null);


-- user account (RBAC)
-- -------------------

INSERT INTO user (id, username, password, enabled) VALUES (0, 'admin', '$2a$10$wyNfWLvNG0oJiiTVK.Np7OAPWwCQxF2xObUej6qYE3RER38FAWShe', true); -- admin:admin
INSERT INTO user (id, username, password, enabled) VALUES (1, 'tom', '$2a$10$5el.rbvq9HKzofb/v5CTjOQ9avBLvGN5/fyNz5VjaXChMvpvywj3G', true);   -- tom:cat
INSERT INTO user (id, username, password, enabled) VALUES (2, 'lucy', '$2a$10$y33mQ/VO.cwkADXuGvdEAOd/jl061fAq9uNNTZh8tyQOzOpCLu562', true);  -- lucy:lucky

-- Role define MUST with 'ROLE_' prefix. To ensure `hasRole()` works
INSERT INTO role (id, name) VALUES (0, 'ROLE_admin');
INSERT INTO role (id, name) VALUES (1, 'ROLE_user');
INSERT INTO role (id, name) VALUES (2, 'ROLE_reader');


-- Permission define without 'ROLE_' prefix, SHOULD use `hasAuthority()` to check permission.
INSERT INTO permission (id, name) VALUES (0, 'user:read');
INSERT INTO permission (id, name) VALUES (1, 'book:read');
INSERT INTO permission (id, name) VALUES (2, 'book:write');
INSERT INTO permission (id, name) VALUES (3, 'admin');
INSERT INTO permission (id, name) VALUES (4, 'user');


INSERT INTO user_role (id, user_id, role_id) VALUES (0, 0, 0);
INSERT INTO user_role (id, user_id, role_id) VALUES (1, 1, 1);
INSERT INTO user_role (id, user_id, role_id) VALUES (2, 2, 2);


INSERT INTO role_permission (id, role_id, permission_id) VALUES (0, 0, 0);
INSERT INTO role_permission (id, role_id, permission_id) VALUES (1, 0, 1);
INSERT INTO role_permission (id, role_id, permission_id) VALUES (2, 0, 2);
INSERT INTO role_permission (id, role_id, permission_id) VALUES (3, 0, 3);
INSERT INTO role_permission (id, role_id, permission_id) VALUES (4, 0, 4);

INSERT INTO role_permission (id, role_id, permission_id) VALUES (5, 1, 0);
INSERT INTO role_permission (id, role_id, permission_id) VALUES (6, 1, 4);

INSERT INTO role_permission (id, role_id, permission_id) VALUES (7, 2, 1);
