--liquibase formatted sql
--changeset qed:v2021.05.28.1236.1__create_ffs_ap_actuals_seq
create table nrdk_tmp_validation(seq_id number(10,0), validation_type varchar(20), stage varchar2(80), validation_data varchar2(4000))
--rollback drop table nrdk_tmp_validation purge